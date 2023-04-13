// Message type: envoy.extensions.rate_limit_descriptors.expr.v3.Descriptor
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.rate_limit_descriptors.expr.v3.Descriptor';
local generator = import '../generator.libsonnet';
local fields = {
  descriptor_key: {
    type: 'string',
    allowedNames: [
      'descriptor_key',
      'descriptorKey',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  parsed: {
    type: 'google.api.expr.v1alpha1.Expr',
    allowedNames: [
      'parsed',
    ],
  },
  skip_if_error: {
    type: 'bool',
    allowedNames: [
      'skip_if_error',
      'skipIfError',
    ],
  },
  text: {
    type: 'string',
    allowedNames: [
      'text',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
};
local oneOfs = [
  {
    fields: [
      'text',
      'parsed',
    ],
    required: false,
    group: 'expr_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withDescriptorKey:: function(val) validator.validateField(self + { descriptor_key: val }, 'descriptor_key', type + '.withDescriptorKey'),
    withParsed:: function(val) validator.validateField(self + { parsed: val }, 'parsed', type + '.withParsed'),
    withSkipIfError:: function(val) validator.validateField(self + { skip_if_error: val }, 'skip_if_error', type + '.withSkipIfError'),
    withText:: function(val) validator.validateField(self + { text: val }, 'text', type + '.withText'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}