// Message type: google.protobuf.DescriptorProto.ExtensionRange
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.protobuf.DescriptorProto.ExtensionRange';
local generator = import '../generator.libsonnet';
local fields = {
  end: {
    type: 'int32',
    allowedNames: [
      'end',
    ],
  },
  options: {
    type: 'google.protobuf.ExtensionRangeOptions',
    allowedNames: [
      'options',
    ],
  },
  start: {
    type: 'int32',
    allowedNames: [
      'start',
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
    withEnd:: function(val) validator.validateField(self + { end: val }, 'end', type + '.withEnd'),
    withOptions:: function(val) validator.validateField(self + { options: val }, 'options', type + '.withOptions'),
    withStart:: function(val) validator.validateField(self + { start: val }, 'start', type + '.withStart'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
