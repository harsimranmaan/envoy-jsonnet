// Message type: google.protobuf.FloatValue
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.protobuf.FloatValue';
local generator = import '../generator.libsonnet';
local fields = {
  value: {
    type: 'float',
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
    withValue:: function(val) validator.validateField(self + { value: val }, 'value', type + '.withValue'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
