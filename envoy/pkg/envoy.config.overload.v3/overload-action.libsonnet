// Message type: envoy.config.overload.v3.OverloadAction
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.overload.v3.OverloadAction';
local generator = import '../generator.libsonnet';
local fields = {
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
  triggers: {
    type: 'envoy.config.overload.v3.Trigger',
    allowedNames: [
      'triggers',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 1,
      },
    },
  },
  typed_config: {
    type: 'google.protobuf.Any',
    allowedNames: [
      'typed_config',
      'typedConfig',
    ],
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
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withTriggers:: function(val) validator.validateField(self + { triggers: val }, 'triggers', type + '.withTriggers'),
    withTypedConfig:: function(val) validator.validateField(self + { typed_config: val }, 'typed_config', type + '.withTypedConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}