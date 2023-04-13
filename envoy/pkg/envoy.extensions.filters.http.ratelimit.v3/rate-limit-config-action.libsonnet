// Message type: envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action';
local generator = import '../generator.libsonnet';
local fields = {
  destination_cluster: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action.DestinationCluster',
    allowedNames: [
      'destination_cluster',
      'destinationCluster',
    ],
  },
  extension: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'extension',
    ],
  },
  generic_key: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action.GenericKey',
    allowedNames: [
      'generic_key',
      'genericKey',
    ],
  },
  header_value_match: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action.HeaderValueMatch',
    allowedNames: [
      'header_value_match',
      'headerValueMatch',
    ],
  },
  metadata: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action.MetaData',
    allowedNames: [
      'metadata',
    ],
  },
  remote_address: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action.RemoteAddress',
    allowedNames: [
      'remote_address',
      'remoteAddress',
    ],
  },
  request_headers: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action.RequestHeaders',
    allowedNames: [
      'request_headers',
      'requestHeaders',
    ],
  },
  source_cluster: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig.Action.SourceCluster',
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
      'metadata',
      'extension',
    ],
    required: true,
    group: 'action_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    SourceCluster:: (import 'rate-limit-config-action-source-cluster.libsonnet').definition,
    DestinationCluster:: (import 'rate-limit-config-action-destination-cluster.libsonnet').definition,
    RequestHeaders:: (import 'rate-limit-config-action-request-headers.libsonnet').definition,
    RemoteAddress:: (import 'rate-limit-config-action-remote-address.libsonnet').definition,
    GenericKey:: (import 'rate-limit-config-action-generic-key.libsonnet').definition,
    HeaderValueMatch:: (import 'rate-limit-config-action-header-value-match.libsonnet').definition,
    MetaData:: (import 'rate-limit-config-action-meta-data.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withDestinationCluster:: function(val) validator.validateField(self + { destination_cluster: val }, 'destination_cluster', type + '.withDestinationCluster'),
    withExtension:: function(val) validator.validateField(self + { extension: val }, 'extension', type + '.withExtension'),
    withGenericKey:: function(val) validator.validateField(self + { generic_key: val }, 'generic_key', type + '.withGenericKey'),
    withHeaderValueMatch:: function(val) validator.validateField(self + { header_value_match: val }, 'header_value_match', type + '.withHeaderValueMatch'),
    withMetadata:: function(val) validator.validateField(self + { metadata: val }, 'metadata', type + '.withMetadata'),
    withRemoteAddress:: function(val) validator.validateField(self + { remote_address: val }, 'remote_address', type + '.withRemoteAddress'),
    withRequestHeaders:: function(val) validator.validateField(self + { request_headers: val }, 'request_headers', type + '.withRequestHeaders'),
    withSourceCluster:: function(val) validator.validateField(self + { source_cluster: val }, 'source_cluster', type + '.withSourceCluster'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}