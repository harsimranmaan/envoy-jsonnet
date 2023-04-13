// Message type: envoy.extensions.filters.network.thrift_proxy.filters.payload_to_metadata.v3.PayloadToMetadata.FieldSelector
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.thrift_proxy.filters.payload_to_metadata.v3.PayloadToMetadata.FieldSelector';
local generator = import '../generator.libsonnet';
local fields = {
  child: {
    type: 'envoy.extensions.filters.network.thrift_proxy.filters.payload_to_metadata.v3.PayloadToMetadata.FieldSelector',
    allowedNames: [
      'child',
    ],
  },
  id: {
    type: 'int32',
    allowedNames: [
      'id',
    ],
    constraints: {
      Int32: {
        gte: -32768,
        lte: 32767,
      },
    },
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
    withChild:: function(val) validator.validateField(self + { child: val }, 'child', type + '.withChild'),
    withId:: function(val) validator.validateField(self + { id: val }, 'id', type + '.withId'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
