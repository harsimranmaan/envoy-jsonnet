// Message type: google.protobuf.EnumDescriptorProto
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.protobuf.EnumDescriptorProto';
local generator = import '../generator.libsonnet';
local fields = {
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
  },
  options: {
    type: 'google.protobuf.EnumOptions',
    allowedNames: [
      'options',
    ],
  },
  reserved_name: {
    type: 'string',
    allowedNames: [
      'reserved_name',
      'reservedName',
    ],
    containerType: 'list',
  },
  reserved_range: {
    type: 'google.protobuf.EnumDescriptorProto.EnumReservedRange',
    allowedNames: [
      'reserved_range',
      'reservedRange',
    ],
    containerType: 'list',
  },
  value: {
    type: 'google.protobuf.EnumValueDescriptorProto',
    allowedNames: [
      'value',
    ],
    containerType: 'list',
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    EnumReservedRange:: (import 'enum-descriptor-proto-enum-reserved-range.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withOptions:: function(val) validator.validateField(self + { options: val }, 'options', type + '.withOptions'),
    withReservedName:: function(val) validator.validateField(self + { reserved_name: val }, 'reserved_name', type + '.withReservedName'),
    withReservedRange:: function(val) validator.validateField(self + { reserved_range: val }, 'reserved_range', type + '.withReservedRange'),
    withValue:: function(val) validator.validateField(self + { value: val }, 'value', type + '.withValue'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
