// Message type: envoy.config.route.v3.RateLimit.Action
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RateLimit.Action';
local generator = import '../generator.libsonnet';
local fields = {
  destination_cluster: {
    type: 'envoy.config.route.v3.RateLimit.Action.DestinationCluster',
    allowedNames: [
      'destination_cluster',
      'destinationCluster',
    ],
  },
  dynamic_metadata: {
    type: 'envoy.config.route.v3.RateLimit.Action.DynamicMetaData',
    allowedNames: [
      'dynamic_metadata',
      'dynamicMetadata',
    ],
  },
  extension: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'extension',
    ],
  },
  generic_key: {
    type: 'envoy.config.route.v3.RateLimit.Action.GenericKey',
    allowedNames: [
      'generic_key',
      'genericKey',
    ],
  },
  header_value_match: {
    type: 'envoy.config.route.v3.RateLimit.Action.HeaderValueMatch',
    allowedNames: [
      'header_value_match',
      'headerValueMatch',
    ],
  },
  masked_remote_address: {
    type: 'envoy.config.route.v3.RateLimit.Action.MaskedRemoteAddress',
    allowedNames: [
      'masked_remote_address',
      'maskedRemoteAddress',
    ],
  },
  metadata: {
    type: 'envoy.config.route.v3.RateLimit.Action.MetaData',
    allowedNames: [
      'metadata',
    ],
  },
  query_parameter_value_match: {
    type: 'envoy.config.route.v3.RateLimit.Action.QueryParameterValueMatch',
    allowedNames: [
      'query_parameter_value_match',
      'queryParameterValueMatch',
    ],
  },
  remote_address: {
    type: 'envoy.config.route.v3.RateLimit.Action.RemoteAddress',
    allowedNames: [
      'remote_address',
      'remoteAddress',
    ],
  },
  request_headers: {
    type: 'envoy.config.route.v3.RateLimit.Action.RequestHeaders',
    allowedNames: [
      'request_headers',
      'requestHeaders',
    ],
  },
  source_cluster: {
    type: 'envoy.config.route.v3.RateLimit.Action.SourceCluster',
    allowedNames: [
      'source_cluster',
      'sourceCluster',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'source_cluster',
      'destination_cluster',
      'request_headers',
      'remote_address',
      'generic_key',
      'header_value_match',
      'dynamic_metadata',
      'metadata',
      'extension',
      'masked_remote_address',
      'query_parameter_value_match',
    ],
    required: true,
    group: 'action_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    SourceCluster:: (import 'rate-limit-action-source-cluster.libsonnet').definition,
    DestinationCluster:: (import 'rate-limit-action-destination-cluster.libsonnet').definition,
    RequestHeaders:: (import 'rate-limit-action-request-headers.libsonnet').definition,
    RemoteAddress:: (import 'rate-limit-action-remote-address.libsonnet').definition,
    MaskedRemoteAddress:: (import 'rate-limit-action-masked-remote-address.libsonnet').definition,
    GenericKey:: (import 'rate-limit-action-generic-key.libsonnet').definition,
    HeaderValueMatch:: (import 'rate-limit-action-header-value-match.libsonnet').definition,
    DynamicMetaData:: (import 'rate-limit-action-dynamic-meta-data.libsonnet').definition,
    MetaData:: (import 'rate-limit-action-meta-data.libsonnet').definition,
    QueryParameterValueMatch:: (import 'rate-limit-action-query-parameter-value-match.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withDestinationCluster:: function(val) validator.validateField(self + { destination_cluster: val }, 'destination_cluster', type + '.withDestinationCluster'),
    withDynamicMetadata:: function(val) validator.validateField(self + { dynamic_metadata: val }, 'dynamic_metadata', type + '.withDynamicMetadata'),
    withExtension:: function(val) validator.validateField(self + { extension: val }, 'extension', type + '.withExtension'),
    withGenericKey:: function(val) validator.validateField(self + { generic_key: val }, 'generic_key', type + '.withGenericKey'),
    withHeaderValueMatch:: function(val) validator.validateField(self + { header_value_match: val }, 'header_value_match', type + '.withHeaderValueMatch'),
    withMaskedRemoteAddress:: function(val) validator.validateField(self + { masked_remote_address: val }, 'masked_remote_address', type + '.withMaskedRemoteAddress'),
    withMetadata:: function(val) validator.validateField(self + { metadata: val }, 'metadata', type + '.withMetadata'),
    withQueryParameterValueMatch:: function(val) validator.validateField(self + { query_parameter_value_match: val }, 'query_parameter_value_match', type + '.withQueryParameterValueMatch'),
    withRemoteAddress:: function(val) validator.validateField(self + { remote_address: val }, 'remote_address', type + '.withRemoteAddress'),
    withRequestHeaders:: function(val) validator.validateField(self + { request_headers: val }, 'request_headers', type + '.withRequestHeaders'),
    withSourceCluster:: function(val) validator.validateField(self + { source_cluster: val }, 'source_cluster', type + '.withSourceCluster'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
