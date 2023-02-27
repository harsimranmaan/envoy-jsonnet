// Message type: google.protobuf.FileDescriptorSet
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.protobuf.FileDescriptorSet';
local generator = import '../generator.libsonnet';
local fields = {
  file: {
    type: 'google.protobuf.FileDescriptorProto',
    allowedNames: [
      'file',
    ],
    containerType: 'list',
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
    withFile:: function(val) validator.validateField(self + { file: val }, 'file', type + '.withFile'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
