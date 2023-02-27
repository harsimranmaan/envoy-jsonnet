// Message type: google.protobuf.DescriptorProto
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.protobuf.DescriptorProto';
local generator = import '../generator.libsonnet';
local fields = {
  enum_type: {
    type: 'google.protobuf.EnumDescriptorProto',
    allowedNames: [
      'enum_type',
      'enumType',
    ],
    containerType: 'list',
  },
  extension: {
    type: 'google.protobuf.FieldDescriptorProto',
    allowedNames: [
      'extension',
    ],
    containerType: 'list',
  },
  extension_range: {
    type: 'google.protobuf.DescriptorProto.ExtensionRange',
    allowedNames: [
      'extension_range',
      'extensionRange',
    ],
    containerType: 'list',
  },
  field: {
    type: 'google.protobuf.FieldDescriptorProto',
    allowedNames: [
      'field',
    ],
    containerType: 'list',
  },
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
  },
  nested_type: {
    type: 'google.protobuf.DescriptorProto',
    allowedNames: [
      'nested_type',
      'nestedType',
    ],
    containerType: 'list',
  },
  oneof_decl: {
    type: 'google.protobuf.OneofDescriptorProto',
    allowedNames: [
      'oneof_decl',
      'oneofDecl',
    ],
    containerType: 'list',
  },
  options: {
    type: 'google.protobuf.MessageOptions',
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
    type: 'google.protobuf.DescriptorProto.ReservedRange',
    allowedNames: [
      'reserved_range',
      'reservedRange',
    ],
    containerType: 'list',
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    ExtensionRange:: (import 'descriptor-proto-extension-range.libsonnet').definition,
    ReservedRange:: (import 'descriptor-proto-reserved-range.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withEnumType:: function(val) validator.validateField(self + { enum_type: val }, 'enum_type', type + '.withEnumType'),
    withExtension:: function(val) validator.validateField(self + { extension: val }, 'extension', type + '.withExtension'),
    withExtensionRange:: function(val) validator.validateField(self + { extension_range: val }, 'extension_range', type + '.withExtensionRange'),
    withField:: function(val) validator.validateField(self + { field: val }, 'field', type + '.withField'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withNestedType:: function(val) validator.validateField(self + { nested_type: val }, 'nested_type', type + '.withNestedType'),
    withOneofDecl:: function(val) validator.validateField(self + { oneof_decl: val }, 'oneof_decl', type + '.withOneofDecl'),
    withOptions:: function(val) validator.validateField(self + { options: val }, 'options', type + '.withOptions'),
    withReservedName:: function(val) validator.validateField(self + { reserved_name: val }, 'reserved_name', type + '.withReservedName'),
    withReservedRange:: function(val) validator.validateField(self + { reserved_range: val }, 'reserved_range', type + '.withReservedRange'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}