// Message type: google.api.expr.v1alpha1.Type
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.api.expr.v1alpha1.Type';
local generator = import '../generator.libsonnet';
local fields = {
  abstract_type: {
    type: 'google.api.expr.v1alpha1.Type.AbstractType',
    allowedNames: [
      'abstract_type',
      'abstractType',
    ],
  },
  dyn: {
    type: 'google.protobuf.Empty',
    allowedNames: [
      'dyn',
    ],
  },
  'error': {
    type: 'google.protobuf.Empty',
    allowedNames: [
      'error',
    ],
  },
  'function': {
    type: 'google.api.expr.v1alpha1.Type.FunctionType',
    allowedNames: [
      'function',
    ],
  },
  list_type: {
    type: 'google.api.expr.v1alpha1.Type.ListType',
    allowedNames: [
      'list_type',
      'listType',
    ],
  },
  map_type: {
    type: 'google.api.expr.v1alpha1.Type.MapType',
    allowedNames: [
      'map_type',
      'mapType',
    ],
  },
  message_type: {
    type: 'string',
    allowedNames: [
      'message_type',
      'messageType',
    ],
  },
  'null': {
    type: 'google.protobuf.NullValue',
    allowedNames: [
      'null',
    ],
  },
  primitive: {
    type: 'google.api.expr.v1alpha1.Type.PrimitiveType',
    allowedNames: [
      'primitive',
    ],
  },
  type: {
    type: 'google.api.expr.v1alpha1.Type',
    allowedNames: [
      'type',
    ],
  },
  type_param: {
    type: 'string',
    allowedNames: [
      'type_param',
      'typeParam',
    ],
  },
  well_known: {
    type: 'google.api.expr.v1alpha1.Type.WellKnownType',
    allowedNames: [
      'well_known',
      'wellKnown',
    ],
  },
  wrapper: {
    type: 'google.api.expr.v1alpha1.Type.PrimitiveType',
    allowedNames: [
      'wrapper',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'dyn',
      'null',
      'primitive',
      'wrapper',
      'well_known',
      'list_type',
      'map_type',
      'function',
      'message_type',
      'type_param',
      'type',
      'error',
      'abstract_type',
    ],
    required: false,
    group: 'type_kind',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    PrimitiveType:: (import 'type-primitive-type.libsonnet').definition,
    WellKnownType:: (import 'type-well-known-type.libsonnet').definition,
    ListType:: (import 'type-list-type.libsonnet').definition,
    MapType:: (import 'type-map-type.libsonnet').definition,
    FunctionType:: (import 'type-function-type.libsonnet').definition,
    AbstractType:: (import 'type-abstract-type.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withAbstractType:: function(val) validator.validateField(self + { abstract_type: val }, 'abstract_type', type + '.withAbstractType'),
    withDyn:: function(val) validator.validateField(self + { dyn: val }, 'dyn', type + '.withDyn'),
    withError:: function(val) validator.validateField(self + { 'error': val }, 'error', type + '.withError'),
    withFunction:: function(val) validator.validateField(self + { 'function': val }, 'function', type + '.withFunction'),
    withListType:: function(val) validator.validateField(self + { list_type: val }, 'list_type', type + '.withListType'),
    withMapType:: function(val) validator.validateField(self + { map_type: val }, 'map_type', type + '.withMapType'),
    withMessageType:: function(val) validator.validateField(self + { message_type: val }, 'message_type', type + '.withMessageType'),
    withNull:: function(val) validator.validateField(self + { 'null': val }, 'null', type + '.withNull'),
    withPrimitive:: function(val) validator.validateField(self + { primitive: val }, 'primitive', type + '.withPrimitive'),
    withType:: function(val) validator.validateField(self + { type: val }, 'type', type + '.withType'),
    withTypeParam:: function(val) validator.validateField(self + { type_param: val }, 'type_param', type + '.withTypeParam'),
    withWellKnown:: function(val) validator.validateField(self + { well_known: val }, 'well_known', type + '.withWellKnown'),
    withWrapper:: function(val) validator.validateField(self + { wrapper: val }, 'wrapper', type + '.withWrapper'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
