%{

/**
 * @file    grammar.y
 * @copyright defined in aergo/LICENSE.txt
 */

#include "common.h"

#include "util.h"
#include "error.h"
#include "parser.h"

#define YYLLOC_DEFAULT(Current, Rhs, N)                                        \
    (Current) = YYRHSLOC(Rhs, (N) > 0 ? 1 : 0)

extern int yylex(YYSTYPE *lval, YYLTYPE *lloc, void *yyscanner);

static void yyerror(YYLTYPE *lloc, yyparam_t *param, void *scanner,
                    const char *msg);

%}

%define api.pure full
%define parse.error verbose
%locations
%parse-param { yyparam_t *param }
%param { void *yyscanner }
%debug
%verbose
%initial-action {
    yylloc.first.line = 1;
    yylloc.first.col = 1;
    yylloc.first.offset = 0;
    yylloc.last.line = 1;
    yylloc.last.col = 1;
    yylloc.last.offset = 0;
}

%union {
    int ival;
    char *str;
}

/* identifier */
%token  <str>           ID

/* expr_lit */
%token  <str>
        L_FLOAT         L_HEXA          L_INT           L_STR

/* operator */
%token  OP_ADD_ASSIGN   OP_SUB_ASSIGN   OP_MUL_ASSIGN   OP_DIV_ASSIGN
        OP_MOD_ASSIGN   OP_AND_ASSIGN   OP_XOR_ASSIGN   OP_OR_ASSIGN
        OP_RSHIFT       OP_LSHIFT       OP_INC          OP_DEC
        OP_AND          OP_OR           OP_LE           OP_GE
        OP_EQ           OP_NE
        OP_MAP

/* keyword */
%token  /* A */
        K_ACCOUNT
        /* B */
        K_BOOL          K_BREAK         K_BYTE
        /* C */
        K_CASE          K_CONST         K_CONSTRUCTOR   K_CONTINUE
        K_CONTRACT
        /* D */
        K_DEFAULT       K_DOUBLE
        /* E */
        K_ELSE
        /* F */
        K_FALSE         K_FILE          K_FLOAT         K_FOR
        K_FUNC
        /* G */
        /* H */
        /* I */
        K_IF            K_INIT          K_INT           K_INT16
        K_INT32         K_INT64
        /* L */
        /* M */
        K_MAP
        /* N */
        K_NEW           K_NULL
        /* O */
        /* P */
        K_PAYABLE       K_PRIVATE       K_PUBLIC
        /* Q */
        /* R */
        K_RETURN
        /* S */
        K_STRING        K_STRUCT        K_SWITCH
        /* T */
        K_TRUE
        /* U */
        K_UINT          K_UINT16        K_UINT32        K_UINT64
        /* V */
        /* W */
        /* X */
        /* Y */
        /* Z */

/* precedences */
%left   OP_OR
%left   OP_AND
%right  '!'
%left   '|'
%left   '&'
%left   OP_EQ OP_NE
%left   OP_LE OP_GE '<' '>'
%left   '+' '-' '%'
%left   '*' '/'
%left   OP_INC OP_DEC
%left   '.'

/* types */
%type   <str>           id

%start  smart_contract

%%

smart_contract:
    contract_decl
|   smart_contract contract_decl
;

contract_decl:
    K_CONTRACT id '{' contract_body '}'
;

contract_body:
    decl_list_opt constructor_opt func_decl_list_opt
;

decl_list_opt:
    /* empty */
|   decl_list
;

decl_list:
    prim_decl
|   decl_list prim_decl
|   struct_decl
|   decl_list struct_decl
;

prim_decl:
    prim_spec var_decl_list ';'
;

prim_spec:
    type_spec
|   K_CONST type_spec
;

type_spec:
    K_ACCOUNT
|   K_BOOL
|   K_BYTE
|   K_FLOAT
|   K_DOUBLE
|   K_INT
|   K_INT16
|   K_INT32
|   K_INT64
|   K_STRING
|   K_UINT
|   K_UINT16
|   K_UINT32
|   K_UINT64
|   K_MAP '(' type_spec OP_MAP type_spec ')'
|   id
;

var_decl_list:
    var_decl
|   var_decl_list ',' var_decl
;

var_decl:
    declarator
|   declarator '=' initializer
;

declarator:
    id
|   declarator '[' expr_add ']'
|   declarator '[' ']'
;

initializer:
    expr_cond
|   '{' init_list '}'
|   '{' init_list ',' '}'
;

init_list:
    initializer
|   init_list ',' initializer
;

struct_decl:
    K_STRUCT id '{' struct_decl_list '}'
;

struct_decl_list:
    prim_decl
|   struct_decl_list prim_decl
;

constructor_opt:
    /* empty */
|   constructor
;

constructor:
    K_CONSTRUCTOR '(' param_list_opt ')' stmt_blk
;

param_list_opt:
    /* empty */
|   param_list
;

param_list:
    param_decl
|   param_list ',' param_decl
;

param_decl:
    prim_spec declarator
;

func_decl_list_opt:
    /* empty */
|   func_decl_list
;

func_decl_list:
    function
|   func_decl_list function
;

function:
    modifier_opt K_FUNC id '(' param_list_opt ')' return_type_opt stmt_blk
;

modifier_opt:
    /* empty */
|   modifier_opt K_PAYABLE
|   modifier_opt K_PRIVATE
|   modifier_opt K_PUBLIC
;

return_type_opt:
    /* empty */
|   prim_spec
|   '(' return_type_list ')'
;

return_type_list:
    prim_spec
|   return_type_list ',' prim_spec
;

statement:
    stmt_expr
|   stmt_if
|   stmt_for
|   stmt_switch
|   stmt_label
|   stmt_jump
|   stmt_blk
;

stmt_expr:
    ';'
|   expression ';'
;

stmt_if:
    K_IF '(' expression ')' stmt_blk
|   K_IF '(' expression ')' stmt_blk K_ELSE stmt_blk
;

stmt_for:
    K_FOR '(' stmt_expr stmt_expr ')' stmt_blk
|   K_FOR '(' stmt_expr stmt_expr expression ')' stmt_blk
|   K_FOR '(' prim_decl stmt_expr ')' stmt_blk
|   K_FOR '(' prim_decl stmt_expr expression ')' stmt_blk
;

stmt_switch:
    K_SWITCH '(' expression ')' stmt_blk
;

stmt_label:
    K_CASE expr_const ':' statement
|   K_DEFAULT ':' statement
;

stmt_jump:
    K_CONTINUE ';'
|   K_BREAK ';'
|   K_RETURN ';'
|   K_RETURN expression ';'
;

stmt_blk:
    '{' '}'
|   '{' block_item_list '}'
;

block_item_list:
    block_item
|   block_item_list block_item
;

block_item:
    prim_decl
|   struct_decl
|   statement
;

expression:
    expr_assign
|   expression ',' expr_assign
;

expr_assign:
    expr_cond
|   expr_unary op_assign expr_assign
;

op_assign:
    '='
|   OP_ADD_ASSIGN
|   OP_SUB_ASSIGN
|   OP_MUL_ASSIGN
|   OP_DIV_ASSIGN
|   OP_MOD_ASSIGN
|   OP_AND_ASSIGN
|   OP_XOR_ASSIGN
|   OP_OR_ASSIGN
;

expr_cond:
    expr_or
|   expr_or '?' expression ':' expr_cond
;

expr_or:
    expr_and
|   expr_or OP_OR expr_and
;

expr_and:
    expr_bit_or
|   expr_and OP_AND expr_bit_or
;

expr_bit_or:
    expr_bit_xor
|   expr_bit_or '|' expr_bit_xor
;

expr_bit_xor:
    expr_bit_and
|   expr_bit_xor '^' expr_bit_and
;

expr_bit_and:
    expr_eq
|   expr_bit_and '&' expr_eq
;

expr_eq:
    expr_cmp
|   expr_eq OP_EQ expr_cmp
|   expr_eq OP_NE expr_cmp
;

expr_cmp:
    expr_shift
|   expr_cmp op_cmp expr_shift
;

op_cmp:
    '<'
|   '>'
|   OP_LE
|   OP_GE
;

expr_shift:
    expr_add
|   expr_shift OP_RSHIFT expr_add
|   expr_shift OP_LSHIFT expr_add
;

expr_add:
    expr_mul
|   expr_add '+' expr_mul
|   expr_add '-' expr_mul
;

expr_mul:
    expr_unary
|   expr_mul '*' expr_unary
|   expr_mul '/' expr_unary
|   expr_mul '%' expr_unary
;

expr_unary:
    expr_post
|   OP_INC expr_unary
|   OP_DEC expr_unary
|   op_unary expr_unary
;

op_unary:
    '+'
|   '-'
|   '~'
|   '!'
;

expr_post:
    expr_prim
|   expr_post '[' expression ']'
|   expr_post '(' ')'
|   expr_post '(' expr_list ')'
|   expr_post '.' id
|   expr_post OP_INC
|   expr_post OP_DEC
;

expr_prim:
    K_NULL
|   K_TRUE
|   K_FALSE
|   L_INT
|   L_FLOAT
|   L_HEXA
|   string
|   id
|   '(' expression ')'
;

expr_list:
    expr_assign
|   expr_list ',' expr_assign
;

expr_const:
    expr_cond
;

string:
    L_STR
|   string L_STR
;

id:
    ID              { $$ = $1; }
;

%%

static void
yyerror(YYLTYPE *lloc, yyparam_t *param, void *scanner, const char *msg)
{
    ERROR(SYNTAX_ERROR, FILENAME(param->path), lloc->first.line, msg,
          make_trace(param->path, lloc));
}

/* end of grammar.y */
