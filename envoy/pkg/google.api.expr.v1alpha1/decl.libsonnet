// Message type: google.api.expr.v1alpha1.Decl
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.api.expr.v1alpha1.Decl';
local generator = import '../generator.libsonnet';
local fields = {
  'function': {
    type: 'google.api.expr.v1alpha1.Decl.FunctionDecl',
    allowedNames: [
      'function',
    ],
  },
  ident: {
    type: 'google.api.expr.v1alpha1.Decl.IdentDecl',
    allowedNames: [
      'ident',
    ],
  },
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'ident',
      'function',
    ],
    required: false,
    group: 'decl_kind',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    IdentDecl:: (import 'decl-ident-decl.libsonnet').definition,
    FunctionDecl:: (import 'decl-function-decl.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withFunction:: function(val) validator.validateField(self + { 'function': val }, 'function', type + '.withFunction'),
    withIdent:: function(val) validator.validateField(self + { ident: val }, 'ident', type + '.withIdent'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}