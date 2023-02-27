// Message type: google.protobuf.FieldDescriptorProto
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.protobuf.FieldDescriptorProto';
local generator = import '../generator.libsonnet';
local fields = {
  default_value: {
    type: 'string',
    allowedNames: [
      'default_value',
      'defaultValue',
    ],
  },
  extendee: {
    type: 'string',
    allowedNames: [
      'extendee',
    ],
  },
  json_name: {
    type: 'string',
    allowedNames: [
      'json_name',
      'jsonName',
    ],
  },
  label: {
    type: 'google.protobuf.FieldDescriptorProto.Label',
    allowedNames: [
      'label',
    ],
  },
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
  },
  number: {
    type: 'int32',
    allowedNames: [
      'number',
    ],
  },
  oneof_index: {
    type: 'int32',
    allowedNames: [
      'oneof_index',
      'oneofIndex',
    ],
  },
  options: {
    type: 'google.protobuf.FieldOptions',
    allowedNames: [
      'options',
    ],
  },
  proto3_optional: {
    type: 'bool',
    allowedNames: [
      'proto3_optional',
      'proto3Optional',
    ],
  },
  type: {
    type: 'google.protobuf.FieldDescriptorProto.Type',
    allowedNames: [
      'type',
    ],
  },
  type_name: {
    type: 'string',
    allowedNames: [
      'type_name',
      'typeName',
    ],
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Type:: (import 'field-descriptor-proto-type.libsonnet').definition,
    Label:: (import 'field-descriptor-proto-label.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withDefaultValue:: function(val) validator.validateField(self + { default_value: val }, 'default_value', type + '.withDefaultValue'),
    withExtendee:: function(val) validator.validateField(self + { extendee: val }, 'extendee', type + '.withExtendee'),
    withJsonName:: function(val) validator.validateField(self + { json_name: val }, 'json_name', type + '.withJsonName'),
    withLabel:: function(val) validator.validateField(self + { label: val }, 'label', type + '.withLabel'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withNumber:: function(val) validator.validateField(self + { number: val }, 'number', type + '.withNumber'),
    withOneofIndex:: function(val) validator.validateField(self + { oneof_index: val }, 'oneof_index', type + '.withOneofIndex'),
    withOptions:: function(val) validator.validateField(self + { options: val }, 'options', type + '.withOptions'),
    withProto3Optional:: function(val) validator.validateField(self + { proto3_optional: val }, 'proto3_optional', type + '.withProto3Optional'),
    withType:: function(val) validator.validateField(self + { type: val }, 'type', type + '.withType'),
    withTypeName:: function(val) validator.validateField(self + { type_name: val }, 'type_name', type + '.withTypeName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}