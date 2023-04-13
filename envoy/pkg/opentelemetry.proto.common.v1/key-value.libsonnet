// Message type: opentelemetry.proto.common.v1.KeyValue
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'opentelemetry.proto.common.v1.KeyValue';
local generator = import '../generator.libsonnet';
local fields = {
  key: {
    type: 'string',
    allowedNames: [
      'key',
    ],
  },
  value: {
    type: 'opentelemetry.proto.common.v1.AnyValue',
    allowedNames: [
      'value',
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
    withKey:: function(val) validator.validateField(self + { key: val }, 'key', type + '.withKey'),
    withValue:: function(val) validator.validateField(self + { value: val }, 'value', type + '.withValue'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}