// Message type: envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy';
local generator = import '../generator.libsonnet';
local fields = {
  access_log: {
    type: 'envoy.config.accesslog.v3.AccessLog',
    allowedNames: [
      'access_log',
      'accessLog',
    ],
    containerType: 'list',
  },
  access_log_flush_interval: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'access_log_flush_interval',
      'accessLogFlushInterval',
    ],
    constraints: {
      Duration: {
        gte: {
          nanos: 1000000,
        },
      },
    },
  },
  cluster: {
    type: 'string',
    allowedNames: [
      'cluster',
    ],
  },
  downstream_idle_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'downstream_idle_timeout',
      'downstreamIdleTimeout',
    ],
  },
  hash_policy: {
    type: 'envoy.type.v3.HashPolicy',
    allowedNames: [
      'hash_policy',
      'hashPolicy',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        max_items: 1,
      },
    },
  },
  idle_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'idle_timeout',
      'idleTimeout',
    ],
  },
  max_connect_attempts: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_connect_attempts',
      'maxConnectAttempts',
    ],
    constraints: {
      Uint32: {
        gte: 1,
      },
    },
  },
  max_downstream_connection_duration: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'max_downstream_connection_duration',
      'maxDownstreamConnectionDuration',
    ],
    constraints: {
      Duration: {
        gte: {
          nanos: 1000000,
        },
      },
    },
  },
  metadata_match: {
    type: 'envoy.config.core.v3.Metadata',
    allowedNames: [
      'metadata_match',
      'metadataMatch',
    ],
  },
  on_demand: {
    type: 'envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.OnDemand',
    allowedNames: [
      'on_demand',
      'onDemand',
    ],
  },
  stat_prefix: {
    type: 'string',
    allowedNames: [
      'stat_prefix',
      'statPrefix',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  tunneling_config: {
    type: 'envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.TunnelingConfig',
    allowedNames: [
      'tunneling_config',
      'tunnelingConfig',
    ],
  },
  upstream_idle_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'upstream_idle_timeout',
      'upstreamIdleTimeout',
    ],
  },
  weighted_clusters: {
    type: 'envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.WeightedCluster',
    allowedNames: [
      'weighted_clusters',
      'weightedClusters',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'cluster',
      'weighted_clusters',
    ],
    required: true,
    group: 'cluster_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    WeightedCluster:: (import 'tcp-proxy-weighted-cluster.libsonnet').definition,
    TunnelingConfig:: (import 'tcp-proxy-tunneling-config.libsonnet').definition,
    OnDemand:: (import 'tcp-proxy-on-demand.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withAccessLog:: function(val) validator.validateField(self + { access_log: val }, 'access_log', type + '.withAccessLog'),
    withAccessLogFlushInterval:: function(val) validator.validateField(self + { access_log_flush_interval: val }, 'access_log_flush_interval', type + '.withAccessLogFlushInterval'),
    withCluster:: function(val) validator.validateField(self + { cluster: val }, 'cluster', type + '.withCluster'),
    withDownstreamIdleTimeout:: function(val) validator.validateField(self + { downstream_idle_timeout: val }, 'downstream_idle_timeout', type + '.withDownstreamIdleTimeout'),
    withHashPolicy:: function(val) validator.validateField(self + { hash_policy: val }, 'hash_policy', type + '.withHashPolicy'),
    withIdleTimeout:: function(val) validator.validateField(self + { idle_timeout: val }, 'idle_timeout', type + '.withIdleTimeout'),
    withMaxConnectAttempts:: function(val) validator.validateField(self + { max_connect_attempts: val }, 'max_connect_attempts', type + '.withMaxConnectAttempts'),
    withMaxDownstreamConnectionDuration:: function(val) validator.validateField(self + { max_downstream_connection_duration: val }, 'max_downstream_connection_duration', type + '.withMaxDownstreamConnectionDuration'),
    withMetadataMatch:: function(val) validator.validateField(self + { metadata_match: val }, 'metadata_match', type + '.withMetadataMatch'),
    withOnDemand:: function(val) validator.validateField(self + { on_demand: val }, 'on_demand', type + '.withOnDemand'),
    withStatPrefix:: function(val) validator.validateField(self + { stat_prefix: val }, 'stat_prefix', type + '.withStatPrefix'),
    withTunnelingConfig:: function(val) validator.validateField(self + { tunneling_config: val }, 'tunneling_config', type + '.withTunnelingConfig'),
    withUpstreamIdleTimeout:: function(val) validator.validateField(self + { upstream_idle_timeout: val }, 'upstream_idle_timeout', type + '.withUpstreamIdleTimeout'),
    withWeightedClusters:: function(val) validator.validateField(self + { weighted_clusters: val }, 'weighted_clusters', type + '.withWeightedClusters'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
