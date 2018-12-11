/**
 * @file    gen_stmt.c
 * @copyright defined in aergo/LICENSE.txt
 */

#include "common.h"

#include "ast_id.h"
#include "gen_exp.h"
#include "gen_blk.h"
#include "gen_meta.h"
#include "gen_util.h"

#include "gen_stmt.h"

static BinaryenExpressionRef
stmt_gen_assign(gen_t *gen, ast_stmt_t *stmt)
{
    ast_exp_t *l_exp = stmt->u_assign.l_exp;
    ast_exp_t *r_exp = stmt->u_assign.r_exp;
    ast_id_t *id;
    meta_t *meta;
    BinaryenExpressionRef var_exp, val_exp;

    if (is_tuple_exp(l_exp)) {
        int i;
        array_t *l_exps, *r_exps;

        if (!is_tuple_exp(r_exp)) {
            ERROR(ERROR_NOT_SUPPORTED, &r_exp->pos);
            return NULL;
        }

        l_exps = l_exp->u_tup.exps;
        r_exps = r_exp->u_tup.exps;

        if (array_size(l_exps) != array_size(r_exps)) {
            ERROR(ERROR_NOT_SUPPORTED, &r_exp->pos);
            return NULL;
        }

        for (i = 0; i < array_size(l_exps); i++) {
        }

        return NULL;
    }

    meta = &l_exp->meta;

    var_exp = exp_gen(gen, l_exp, meta, true);

    ASSERT2(BinaryenExpressionGetId(var_exp) == BinaryenConstId(),
            BinaryenExpressionGetId(var_exp), BinaryenConstId());

    val_exp = exp_gen(gen, r_exp, meta, false);

    id = l_exp->id;
    ASSERT(id != NULL);

    if (id->idx >= 0)
        /* var_exp == index of variable */
        return BinaryenSetLocal(gen->module, BinaryenConstGetValueI32(var_exp), val_exp);
    else
        /* var_exp == offset of variable */
        return BinaryenStore(gen->module, meta_size(meta),
                             BinaryenConstGetValueI32(var_exp), 0,
                             gen_i32(gen, id->meta.addr), val_exp, meta_gen(gen, meta));
}

static BinaryenExpressionRef
stmt_gen_if(gen_t *gen, ast_stmt_t *stmt)
{
    ast_exp_t *cond_exp = stmt->u_if.cond_exp;
    BinaryenExpressionRef cond;
    BinaryenExpressionRef if_body, else_body;

    cond = exp_gen(gen, cond_exp, &cond_exp->meta, false);

    if_body = blk_gen(gen, stmt->u_if.if_blk);

    if (stmt->u_if.else_blk != NULL) {
        else_body = blk_gen(gen, stmt->u_if.else_blk);
    }
    else {
        int i, j = 0;
        array_t *elif_stmts = &stmt->u_if.elif_stmts;
        BinaryenExpressionRef *instrs;

        instrs = xmalloc(sizeof(BinaryenExpressionRef) * array_size(elif_stmts));

        for (i = 0; i < array_size(elif_stmts); i++) {
            instrs[j++] = stmt_gen_if(gen, array_get(elif_stmts, i, ast_stmt_t));
        }

        else_body = BinaryenBlock(gen->module, NULL, instrs, j, BinaryenTypeNone());
    }

    return BinaryenIf(gen->module, cond, if_body, else_body);
}

static BinaryenExpressionRef
stmt_gen_loop(gen_t *gen, ast_stmt_t *stmt)
{
    return NULL;
}

static BinaryenExpressionRef
stmt_gen_switch(gen_t *gen, ast_stmt_t *stmt)
{
    return NULL;
}

static BinaryenExpressionRef
stmt_gen_return(gen_t *gen, ast_stmt_t *stmt)
{
    return BinaryenNop(gen->module);
}

static BinaryenExpressionRef
stmt_gen_jump(gen_t *gen, ast_stmt_t *stmt)
{
    return NULL;
}

static BinaryenExpressionRef
stmt_gen_goto(gen_t *gen, ast_stmt_t *stmt)
{
    return NULL;
}

static BinaryenExpressionRef
stmt_gen_ddl(gen_t *gen, ast_stmt_t *stmt)
{
    return NULL;
}

static BinaryenExpressionRef
stmt_gen_blk(gen_t *gen, ast_stmt_t *stmt)
{
    return blk_gen(gen, stmt->u_blk.blk);
}

BinaryenExpressionRef
stmt_gen(gen_t *gen, ast_stmt_t *stmt)
{
    switch (stmt->kind) {
    case STMT_NULL:
        return BinaryenNop(gen->module);

    case STMT_EXP:
        return exp_gen(gen, stmt->u_exp.exp, &stmt->u_exp.exp->meta, true);

    case STMT_ASSIGN:
        return stmt_gen_assign(gen, stmt);

    case STMT_IF:
        return stmt_gen_if(gen, stmt);

    case STMT_LOOP:
        return stmt_gen_loop(gen, stmt);

    case STMT_SWITCH:
        return stmt_gen_switch(gen, stmt);

    case STMT_RETURN:
        return stmt_gen_return(gen, stmt);

    case STMT_CONTINUE:
        return stmt_gen_jump(gen, stmt);

    case STMT_BREAK:
        /* TODO: because of switch statement, we will handle this later */
        return NULL;

    case STMT_GOTO:
        return stmt_gen_goto(gen, stmt);

    case STMT_DDL:
        return stmt_gen_ddl(gen, stmt);

    case STMT_BLK:
        return stmt_gen_blk(gen, stmt);

    default:
        ASSERT1(!"invalid statement", stmt->kind);
    }

    return NULL;
}

/* end of gen_stmt.c */
