// Message type: envoy.extensions.filters.network.thrift_proxy.filters.payload_to_metadata.v3.PayloadToMetadata
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.thrift_proxy.filters.payload_to_metadata.v3.PayloadToMetadata';
local generator = import '../generator.libsonnet';
local fields = {
  request_rules: {
    type: 'envoy.extensions.filters.network.thrift_proxy.filters.payload_to_metadata.v3.PayloadToMetadata.Rule',
    allowedNames: [
      'request_rules',
      'requestRules',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 1,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    ValueType:: (import 'payload-to-metadata-value-type.libsonnet').definition,
    KeyValuePair:: (import 'payload-to-metadata-key-value-pair.libsonnet').definition,
    Rule:: (import 'payload-to-metadata-rule.libsonnet').definition,
    FieldSelector:: (import 'payload-to-metadata-field-selector.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withRequestRules:: function(val) validator.validateField(self + { request_rules: val }, 'request_rules', type + '.withRequestRules'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
