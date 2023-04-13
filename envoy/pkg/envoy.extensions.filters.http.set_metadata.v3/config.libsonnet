// Message type: envoy.extensions.filters.http.set_metadata.v3.Config
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.set_metadata.v3.Config';
local generator = import '../generator.libsonnet';
local fields = {
  metadata_namespace: {
    type: 'string',
    allowedNames: [
      'metadata_namespace',
      'metadataNamespace',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  value: {
    type: 'google.protobuf.Struct',
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
    withMetadataNamespace:: function(val) validator.validateField(self + { metadata_namespace: val }, 'metadata_namespace', type + '.withMetadataNamespace'),
    withValue:: function(val) validator.validateField(self + { value: val }, 'value', type + '.withValue'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}