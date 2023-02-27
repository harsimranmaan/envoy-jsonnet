// Message type: envoy.type.tracing.v3.CustomTag.Literal
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.tracing.v3.CustomTag.Literal';
local generator = import '../generator.libsonnet';
local fields = {
  value: {
    type: 'string',
    allowedNames: [
      'value',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
};
local oneOfs = [];
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
    withValue:: function(val) validator.validateField(self + { value: val }, 'value', type + '.withValue'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
