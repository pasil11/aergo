/**
 * @file    trans_exp.c
 * @copyright defined in aergo/LICENSE.txt
 */

#include "common.h"

#include "ast_id.h"
#include "ast_blk.h"
#include "ast_stmt.h"
#include "ir_bb.h"
#include "ir_fn.h"
#include "ir_sgmt.h"

#include "trans_exp.h"

static void
exp_trans_id(trans_t *trans, ast_exp_t *exp)
{
    ast_id_t *id = exp->id;

    ASSERT(id != NULL);

    if (is_var_id(id)) {
        /* The "id->idx" is the index of the local variable itself, the index of the
         * parameter, or the index of the local variable storing the stack address */
        ASSERT(id->idx >= 0);

        if (is_global_id(id) || is_stack_id(id))
            /* The global variable always refers to the memory */
            exp_set_stack(exp, id->idx, id->addr, id->offset);
        else
            exp_set_local(exp, id->idx);
    }
    else if (is_fn_id(id)) {
        /* The "id->idx" is the relative index of the function */
        exp_set_fn(exp, trans->fn->heap_idx, id->idx);
    }
}

static void
exp_trans_lit(trans_t *trans, ast_exp_t *exp)
{
    int addr;
    value_t *val = &exp->u_lit.val;
    ir_sgmt_t *sgmt = &trans->ir->sgmt;

    switch (val->type) {
    case TYPE_BOOL:
    case TYPE_UINT64:
    case TYPE_DOUBLE:
        break;

    case TYPE_STRING:
        addr = sgmt_add_raw(sgmt, val_ptr(val), val_size(val) + 1);
        value_set_i64(val, addr);
        break;

    case TYPE_OBJECT:
        ASSERT(is_null_val(val));
        value_set_i64(val, sgmt_add_raw(sgmt, "\0\0\0\0", 4));
        /*
        if (is_null_val(val))
            addr = 0;
        else
            addr = sgmt_add_raw(sgmt, val_ptr(val), val_size(val));
        value_set_i64(val, addr);
        */
        break;

    default:
        ASSERT1(!"invalid value", val->type);
    }
}

static void
exp_trans_array(trans_t *trans, ast_exp_t *exp)
{
    ast_id_t *id = exp->id;

    exp_trans(trans, exp->u_arr.id_exp);
    exp_trans(trans, exp->u_arr.idx_exp);

    if (is_array_meta(&id->meta)) {
        uint32_t offset;
        ast_exp_t *id_exp = exp->u_arr.id_exp;
        ast_exp_t *idx_exp = exp->u_arr.idx_exp;

        if (!is_stack_exp(id_exp) || !is_lit_exp(idx_exp))
            /* We must dynamically determine the address and offset */
            return;

        /* The following meta_size() is stripped size of array */
        offset = val_i64(&idx_exp->u_lit.val) * meta_size(&exp->meta);

        exp_set_stack(exp, id_exp->u_stk.base, id_exp->u_stk.addr,
                      id_exp->u_stk.offset + offset);
    }
    else {
        /* TODO
         * int addr = fn_add_stack_var(trans->fn);
         * ast_exp_t *call_exp = exp_new_call("$map_get", &exp->pos);
         *
         * bb_add_stmt(trans->bb, stmt_new_exp(call_exp, &exp->pos));
         *
         * return <return address of call>; */
    }
}

static void
exp_trans_cast(trans_t *trans, ast_exp_t *exp)
{
    exp_trans(trans, exp->u_cast.val_exp);

    if (!is_primitive_meta(&exp->meta) || !is_primitive_meta(&exp->u_cast.to_meta)) {
        /* TODO
         * int addr = fn_add_stack_var(trans->fn);
         * ast_exp_t *call_exp = exp_new_call("$concat", &exp->pos);
         *
         * bb_add_stmt(trans->bb, stmt_new_exp(call_exp, &exp->pos));
         *
         * return <return address of call>; */
    }
}

static void
exp_trans_unary(trans_t *trans, ast_exp_t *exp)
{
    ast_exp_t *val_exp = exp->u_un.val_exp;
    ast_exp_t *var_exp, *bi_exp, *lit_exp;

    switch (exp->u_un.kind) {
    case OP_INC:
    case OP_DEC:
        /* Clone value expression because we have to transform it to "x op 1" */
        var_exp = exp_clone(val_exp);

        exp_trans(trans, var_exp);
        exp_trans(trans, val_exp);

        lit_exp = exp_new_lit(&exp->pos);
        value_set_i64(&lit_exp->u_lit.val, 1);

        bi_exp = exp_new_binary(exp->u_un.kind == OP_INC ? OP_ADD : OP_SUB, val_exp,
                                lit_exp, &exp->pos);

        meta_copy(&lit_exp->meta, &val_exp->meta);
        meta_copy(&bi_exp->meta, &val_exp->meta);

        if (exp->u_un.is_prefix)
            bb_add_stmt(trans->bb, stmt_new_assign(var_exp, bi_exp, &exp->pos));
        else
            /* The postfix operator is added as a piggybacked statement
             * since it must be executed after the current statement is executed */
            bb_add_piggyback(trans->bb, stmt_new_assign(var_exp, bi_exp, &exp->pos));

        *exp = *val_exp;
        break;

    case OP_NEG:
    case OP_NOT:
        exp_trans(trans, val_exp);
        break;

    default:
        ASSERT1(!"invalid operator", exp->u_un.kind);
    }
}

static void
exp_trans_binary(trans_t *trans, ast_exp_t *exp)
{
    exp_trans(trans, exp->u_bin.l_exp);
    exp_trans(trans, exp->u_bin.r_exp);

    if (exp->u_bin.kind == OP_ADD && is_string_meta(&exp->meta)) {
        /* TODO
         * int addr = fn_add_stack();
         * ast_exp_t *call exp = exp_new_call("$concat", &exp->pos);
         * bb_add_stmt(trans->bb, stmt_new_exp(call_exp, &exp->pos));
         * return exp_new_stack(addr, offset, &exp->pos);
        */
    }
}

static void
exp_trans_ternary(trans_t *trans, ast_exp_t *exp)
{
    exp_trans(trans, exp->u_tern.pre_exp);
    exp_trans(trans, exp->u_tern.in_exp);
    exp_trans(trans, exp->u_tern.post_exp);

    if (is_lit_exp(exp->u_tern.pre_exp)) {
        /* Maybe we should do this in optimizer (if exists) */
        meta_t meta = exp->meta;

        if (val_bool(&exp->u_tern.pre_exp->u_lit.val))
            *exp = *exp->u_tern.in_exp;
        else
            *exp = *exp->u_tern.post_exp;

        meta_copy(&exp->meta, &meta);
    }
}

static void
exp_trans_access(trans_t *trans, ast_exp_t *exp)
{
    ast_exp_t *id_exp = exp->u_acc.id_exp;
    //ast_id_t *qual_id = id_exp->id;
    ast_id_t *fld_id = exp->id;

    exp_trans(trans, id_exp);

    if (is_fn_id(fld_id)) {
        ASSERT1(is_local_exp(id_exp), id_exp->kind);
    }
    else if (is_stack_exp(id_exp)) {
        exp_set_stack(exp, id_exp->u_stk.base, id_exp->u_stk.addr,
                      id_exp->u_stk.offset + fld_id->offset);
    }

#if 0
    if (is_fn_id(fld_id)) {
        if (is_itf_id(fld_id->up)) {
            int i;
            ast_id_t *cont_id = qual_id->meta.type_id;

            ASSERT1(is_object_meta(&qual_id->meta), qual_id->meta.type);

            ASSERT(cont_id != NULL);
            ASSERT1(is_cont_id(cont_id), cont_id->kind);

            array_foreach(&cont_id->u_cont.blk->ids, i) {
                ast_id_t *fn_id = array_get_id(&cont_id->u_cont.blk->ids, i);

                if (is_fn_id(fn_id) && strcmp(fld_id->name, fn_id->name) == 0) {
                    exp->id = fn_id;
                    break;
                }
            }
        }
    }
    else if (is_stack_exp(id_exp)) {
        exp_set_stack(exp, id_exp->u_stk.addr, id_exp->u_stk.offset + fld_id->offset);
    }
#endif
}

static void
exp_trans_call(trans_t *trans, ast_exp_t *exp)
{
    int i;
    ast_exp_t *id_exp = exp->u_call.id_exp;

    if (is_map_meta(&exp->meta))
        /* TODO */
        return;

    exp_trans(trans, id_exp);

    if (is_ctor_id(exp->id))
        /* The constructor does not have a parameter and returns a contract address */
        return;

    /* Since non-constructor functions are added the contract base address as a first
     * argument, we must also add the address as a call argument here */
    if (exp->u_call.param_exps == NULL)
        exp->u_call.param_exps = array_new();

    if (is_fn_exp(id_exp)) {
        /* If the call expression is of type "x()", pass the first parameter as the
         * first argument */
        ASSERT(trans->fn->heap_idx == 0);

        array_add_first(exp->u_call.param_exps, exp_new_local(TYPE_INT32, 0));
    }
    else {
        /* If the call expression is of type "x.y()", pass x as the first argument */
        ASSERT1(is_access_exp(id_exp), id_exp->kind);
        ASSERT1(is_object_meta(&id_exp->meta), id_exp->meta.type);

        array_add_first(exp->u_call.param_exps, id_exp->u_acc.id_exp);
    }

    array_foreach(exp->u_call.param_exps, i) {
        exp_trans(trans, array_get_exp(exp->u_call.param_exps, i));
    }

    /* Since all return values of a function are treated as parameters,
     * each return value is added as a separate statement
     *
     * As a result, "x, y = f();" is tranformed to "f(); x = r1; y = r2;"
     * in the assignment statement */

    if (exp->id->u_fn.ret_id != NULL) {
        ir_fn_t *fn = trans->fn;
        ast_id_t *ret_id = exp->id->u_fn.ret_id;

        ASSERT(fn != NULL);

        /* if there is a return value, we have to clone it
         * because the call expression itself is transformed */
        bb_add_stmt(trans->bb, stmt_new_exp(exp_clone(exp), &exp->pos));

        /* The return value is always stored in stack memory */
        if (is_tuple_id(ret_id)) {
            int i;
            array_t *elem_exps = array_new();
            array_t *elem_ids = ret_id->u_tup.elem_ids;

            array_foreach(elem_ids, i) {
                ast_id_t *elem_id = array_get_id(elem_ids, i);
                //ast_exp_t *ref_exp;

                ASSERT1(elem_id->offset == 0, elem_id->offset);

                fn_add_stack(fn, elem_id);

                /*
                ref_exp = exp_new_stack(elem_id->meta.type, fn->stack_idx,
                                        elem_id->addr, 0);
                meta_copy(&ref_exp->meta, &elem_id->meta);

                array_add_last(elem_exps, ref_exp);
                */
                array_add_last(elem_exps,
                               exp_new_stack(elem_id->meta.type, fn->stack_idx,
                                             elem_id->addr, 0));
            }

            exp->kind = EXP_TUPLE;
            exp->u_tup.elem_exps = elem_exps;
        }
        else {
            ASSERT1(ret_id->offset == 0, ret_id->offset);

            fn_add_stack(fn, ret_id);

            exp_set_stack(exp, fn->stack_idx, ret_id->addr, 0);
        }
    }
    else {
        bb_add_stmt(trans->bb, stmt_new_exp(exp, &exp->pos));
    }
}

static void
exp_trans_sql(trans_t *trans, ast_exp_t *exp)
{
    /* TODO */
}

static void
exp_trans_tuple(trans_t *trans, ast_exp_t *exp)
{
    int i;
    array_t *elem_exps = exp->u_tup.elem_exps;

    array_foreach(elem_exps, i) {
        exp_trans(trans, array_get_exp(elem_exps, i));
    }
}

static void
exp_trans_init(trans_t *trans, ast_exp_t *exp)
{
    int i;
    bool is_aggr_lit = true;
    array_t *elem_exps = exp->u_init.elem_exps;

    array_foreach(elem_exps, i) {
        ast_exp_t *elem_exp = array_get_exp(elem_exps, i);

        exp_trans(trans, elem_exp);

        if (!is_lit_exp(elem_exp))
            is_aggr_lit = false;
    }

    if (is_aggr_lit) {
        int size = 0;
        char *raw = xcalloc(meta_size(&exp->meta));

        array_foreach(elem_exps, i) {
            ast_exp_t *elem_exp = array_get_exp(elem_exps, i);
            value_t *elem_val = &elem_exp->u_lit.val;

            size = ALIGN(size, meta_align(&elem_exp->meta));

            memcpy(raw + size, val_ptr(elem_val), val_size(elem_val));
            size += meta_size(&elem_exp->meta);
        }

        ASSERT2(size <= meta_size(&exp->meta), size, meta_size(&exp->meta));

        exp_set_lit(exp, NULL);
        value_set_ptr(&exp->u_lit.val, raw, size);
    }
}

void
exp_trans(trans_t *trans, ast_exp_t *exp)
{
    ASSERT(exp != NULL);

    switch (exp->kind) {
    case EXP_NULL:
        break;

    case EXP_ID:
        exp_trans_id(trans, exp);
        break;

    case EXP_LIT:
        exp_trans_lit(trans, exp);
        break;

    case EXP_ARRAY:
        exp_trans_array(trans, exp);
        break;

    case EXP_CAST:
        exp_trans_cast(trans, exp);
        break;

    case EXP_UNARY:
        exp_trans_unary(trans, exp);
        break;

    case EXP_BINARY:
        exp_trans_binary(trans, exp);
        break;

    case EXP_TERNARY:
        exp_trans_ternary(trans, exp);
        break;

    case EXP_ACCESS:
        exp_trans_access(trans, exp);
        break;

    case EXP_CALL:
        exp_trans_call(trans, exp);
        break;

    case EXP_SQL:
        exp_trans_sql(trans, exp);
        break;

    case EXP_TUPLE:
        exp_trans_tuple(trans, exp);
        break;

    case EXP_INIT:
        exp_trans_init(trans, exp);
        break;

    case EXP_GLOBAL:
    case EXP_LOCAL:
    case EXP_STACK:
        break;

    default:
        ASSERT1(!"invalid expression", exp->kind);
    }
}

/* end of trans_exp.c */