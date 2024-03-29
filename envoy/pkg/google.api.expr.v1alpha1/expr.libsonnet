// Message type: google.api.expr.v1alpha1.Expr
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.api.expr.v1alpha1.Expr';
local generator = import '../generator.libsonnet';
local fields = {
  call_expr: {
    type: 'google.api.expr.v1alpha1.Expr.Call',
    allowedNames: [
      'call_expr',
      'callExpr',
    ],
  },
  comprehension_expr: {
    type: 'google.api.expr.v1alpha1.Expr.Comprehension',
    allowedNames: [
      'comprehension_expr',
      'comprehensionExpr',
    ],
  },
  const_expr: {
    type: 'google.api.expr.v1alpha1.Constant',
    allowedNames: [
      'const_expr',
      'constExpr',
    ],
  },
  id: {
    type: 'int64',
    allowedNames: [
      'id',
    ],
  },
  ident_expr: {
    type: 'google.api.expr.v1alpha1.Expr.Ident',
    allowedNames: [
      'ident_expr',
      'identExpr',
    ],
  },
  list_expr: {
    type: 'google.api.expr.v1alpha1.Expr.CreateList',
    allowedNames: [
      'list_expr',
      'listExpr',
    ],
  },
  select_expr: {
    type: 'google.api.expr.v1alpha1.Expr.Select',
    allowedNames: [
      'select_expr',
      'selectExpr',
    ],
  },
  struct_expr: {
    type: 'google.api.expr.v1alpha1.Expr.CreateStruct',
    allowedNames: [
      'struct_expr',
      'structExpr',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'const_expr',
      'ident_expr',
      'select_expr',
      'call_expr',
      'list_expr',
      'struct_expr',
      'comprehension_expr',
    ],
    required: false,
    group: 'expr_kind',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Ident:: (import 'expr-ident.libsonnet').definition,
    Select:: (import 'expr-select.libsonnet').definition,
    Call:: (import 'expr-call.libsonnet').definition,
    CreateList:: (import 'expr-create-list.libsonnet').definition,
    CreateStruct:: (import 'expr-create-struct.libsonnet').definition,
    Comprehension:: (import 'expr-comprehension.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withCallExpr:: function(val) validator.validateField(self + { call_expr: val }, 'call_expr', type + '.withCallExpr'),
    withComprehensionExpr:: function(val) validator.validateField(self + { comprehension_expr: val }, 'comprehension_expr', type + '.withComprehensionExpr'),
    withConstExpr:: function(val) validator.validateField(self + { const_expr: val }, 'const_expr', type + '.withConstExpr'),
    withId:: function(val) validator.validateField(self + { id: val }, 'id', type + '.withId'),
    withIdentExpr:: function(val) validator.validateField(self + { ident_expr: val }, 'ident_expr', type + '.withIdentExpr'),
    withListExpr:: function(val) validator.validateField(self + { list_expr: val }, 'list_expr', type + '.withListExpr'),
    withSelectExpr:: function(val) validator.validateField(self + { select_expr: val }, 'select_expr', type + '.withSelectExpr'),
    withStructExpr:: function(val) validator.validateField(self + { struct_expr: val }, 'struct_expr', type + '.withStructExpr'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
