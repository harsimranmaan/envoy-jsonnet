// Message type: envoy.type.tracing.v3.CustomTag.Environment
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.tracing.v3.CustomTag.Environment';
local generator = import '../generator.libsonnet';
local fields = {
  default_value: {
    type: 'string',
    allowedNames: [
      'default_value',
      'defaultValue',
    ],
  },
  name: {
    type: 'string',
    allowedNames: [
      'name',
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
    withDefaultValue:: function(val) validator.validateField(self + { default_value: val }, 'default_value', type + '.withDefaultValue'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
