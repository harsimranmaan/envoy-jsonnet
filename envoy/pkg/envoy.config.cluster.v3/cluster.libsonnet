// Message type: envoy.config.cluster.v3.Cluster
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.cluster.v3.Cluster';
local generator = import '../generator.libsonnet';
local fields = {
  alt_stat_name: {
    type: 'string',
    allowedNames: [
      'alt_stat_name',
      'altStatName',
    ],
  },
  circuit_breakers: {
    type: 'envoy.config.cluster.v3.CircuitBreakers',
    allowedNames: [
      'circuit_breakers',
      'circuitBreakers',
    ],
  },
  cleanup_interval: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'cleanup_interval',
      'cleanupInterval',
    ],
    constraints: {
      Duration: {
        gt: {},
      },
    },
  },
  close_connections_on_host_health_failure: {
    type: 'bool',
    allowedNames: [
      'close_connections_on_host_health_failure',
      'closeConnectionsOnHostHealthFailure',
    ],
  },
  cluster_type: {
    type: 'envoy.config.cluster.v3.Cluster.CustomClusterType',
    allowedNames: [
      'cluster_type',
      'clusterType',
    ],
  },
  common_http_protocol_options: {
    type: 'envoy.config.core.v3.HttpProtocolOptions',
    allowedNames: [
      'common_http_protocol_options',
      'commonHttpProtocolOptions',
    ],
  },
  common_lb_config: {
    type: 'envoy.config.cluster.v3.Cluster.CommonLbConfig',
    allowedNames: [
      'common_lb_config',
      'commonLbConfig',
    ],
  },
  connect_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'connect_timeout',
      'connectTimeout',
    ],
    constraints: {
      Duration: {
        gt: {},
      },
    },
  },
  connection_pool_per_downstream_connection: {
    type: 'bool',
    allowedNames: [
      'connection_pool_per_downstream_connection',
      'connectionPoolPerDownstreamConnection',
    ],
  },
  dns_failure_refresh_rate: {
    type: 'envoy.config.cluster.v3.Cluster.RefreshRate',
    allowedNames: [
      'dns_failure_refresh_rate',
      'dnsFailureRefreshRate',
    ],
  },
  dns_lookup_family: {
    type: 'envoy.config.cluster.v3.Cluster.DnsLookupFamily',
    allowedNames: [
      'dns_lookup_family',
      'dnsLookupFamily',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  dns_refresh_rate: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'dns_refresh_rate',
      'dnsRefreshRate',
    ],
    constraints: {
      Duration: {
        gt: {
          nanos: 1000000,
        },
      },
    },
  },
  dns_resolution_config: {
    type: 'envoy.config.core.v3.DnsResolutionConfig',
    allowedNames: [
      'dns_resolution_config',
      'dnsResolutionConfig',
    ],
  },
  dns_resolvers: {
    type: 'envoy.config.core.v3.Address',
    allowedNames: [
      'dns_resolvers',
      'dnsResolvers',
    ],
    containerType: 'list',
  },
  eds_cluster_config: {
    type: 'envoy.config.cluster.v3.Cluster.EdsClusterConfig',
    allowedNames: [
      'eds_cluster_config',
      'edsClusterConfig',
    ],
  },
  filters: {
    type: 'envoy.config.cluster.v3.Filter',
    allowedNames: [
      'filters',
    ],
    containerType: 'list',
  },
  health_checks: {
    type: 'envoy.config.core.v3.HealthCheck',
    allowedNames: [
      'health_checks',
      'healthChecks',
    ],
    containerType: 'list',
  },
  http2_protocol_options: {
    type: 'envoy.config.core.v3.Http2ProtocolOptions',
    allowedNames: [
      'http2_protocol_options',
      'http2ProtocolOptions',
    ],
  },
  http_protocol_options: {
    type: 'envoy.config.core.v3.Http1ProtocolOptions',
    allowedNames: [
      'http_protocol_options',
      'httpProtocolOptions',
    ],
  },
  ignore_health_on_host_removal: {
    type: 'bool',
    allowedNames: [
      'ignore_health_on_host_removal',
      'ignoreHealthOnHostRemoval',
    ],
  },
  lb_policy: {
    type: 'envoy.config.cluster.v3.Cluster.LbPolicy',
    allowedNames: [
      'lb_policy',
      'lbPolicy',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  lb_subset_config: {
    type: 'envoy.config.cluster.v3.Cluster.LbSubsetConfig',
    allowedNames: [
      'lb_subset_config',
      'lbSubsetConfig',
    ],
  },
  least_request_lb_config: {
    type: 'envoy.config.cluster.v3.Cluster.LeastRequestLbConfig',
    allowedNames: [
      'least_request_lb_config',
      'leastRequestLbConfig',
    ],
  },
  load_assignment: {
    type: 'envoy.config.endpoint.v3.ClusterLoadAssignment',
    allowedNames: [
      'load_assignment',
      'loadAssignment',
    ],
  },
  load_balancing_policy: {
    type: 'envoy.config.cluster.v3.LoadBalancingPolicy',
    allowedNames: [
      'load_balancing_policy',
      'loadBalancingPolicy',
    ],
  },
  lrs_server: {
    type: 'envoy.config.core.v3.ConfigSource',
    allowedNames: [
      'lrs_server',
      'lrsServer',
    ],
  },
  maglev_lb_config: {
    type: 'envoy.config.cluster.v3.Cluster.MaglevLbConfig',
    allowedNames: [
      'maglev_lb_config',
      'maglevLbConfig',
    ],
  },
  max_requests_per_connection: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_requests_per_connection',
      'maxRequestsPerConnection',
    ],
  },
  metadata: {
    type: 'envoy.config.core.v3.Metadata',
    allowedNames: [
      'metadata',
    ],
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
  original_dst_lb_config: {
    type: 'envoy.config.cluster.v3.Cluster.OriginalDstLbConfig',
    allowedNames: [
      'original_dst_lb_config',
      'originalDstLbConfig',
    ],
  },
  outlier_detection: {
    type: 'envoy.config.cluster.v3.OutlierDetection',
    allowedNames: [
      'outlier_detection',
      'outlierDetection',
    ],
  },
  per_connection_buffer_limit_bytes: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'per_connection_buffer_limit_bytes',
      'perConnectionBufferLimitBytes',
    ],
  },
  preconnect_policy: {
    type: 'envoy.config.cluster.v3.Cluster.PreconnectPolicy',
    allowedNames: [
      'preconnect_policy',
      'preconnectPolicy',
    ],
  },
  protocol_selection: {
    type: 'envoy.config.cluster.v3.Cluster.ClusterProtocolSelection',
    allowedNames: [
      'protocol_selection',
      'protocolSelection',
    ],
  },
  respect_dns_ttl: {
    type: 'bool',
    allowedNames: [
      'respect_dns_ttl',
      'respectDnsTtl',
    ],
  },
  ring_hash_lb_config: {
    type: 'envoy.config.cluster.v3.Cluster.RingHashLbConfig',
    allowedNames: [
      'ring_hash_lb_config',
      'ringHashLbConfig',
    ],
  },
  round_robin_lb_config: {
    type: 'envoy.config.cluster.v3.Cluster.RoundRobinLbConfig',
    allowedNames: [
      'round_robin_lb_config',
      'roundRobinLbConfig',
    ],
  },
  track_cluster_stats: {
    type: 'envoy.config.cluster.v3.TrackClusterStats',
    allowedNames: [
      'track_cluster_stats',
      'trackClusterStats',
    ],
  },
  track_timeout_budgets: {
    type: 'bool',
    allowedNames: [
      'track_timeout_budgets',
      'trackTimeoutBudgets',
    ],
  },
  transport_socket: {
    type: 'envoy.config.core.v3.TransportSocket',
    allowedNames: [
      'transport_socket',
      'transportSocket',
    ],
  },
  transport_socket_matches: {
    type: 'envoy.config.cluster.v3.Cluster.TransportSocketMatch',
    allowedNames: [
      'transport_socket_matches',
      'transportSocketMatches',
    ],
    containerType: 'list',
  },
  type: {
    type: 'envoy.config.cluster.v3.Cluster.DiscoveryType',
    allowedNames: [
      'type',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  typed_dns_resolver_config: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'typed_dns_resolver_config',
      'typedDnsResolverConfig',
    ],
  },
  typed_extension_protocol_options: {
    type: 'google.protobuf.Any',
    allowedNames: [
      'typed_extension_protocol_options',
      'typedExtensionProtocolOptions',
    ],
    containerType: 'map',
  },
  upstream_bind_config: {
    type: 'envoy.config.core.v3.BindConfig',
    allowedNames: [
      'upstream_bind_config',
      'upstreamBindConfig',
    ],
  },
  upstream_config: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'upstream_config',
      'upstreamConfig',
    ],
  },
  upstream_connection_options: {
    type: 'envoy.config.cluster.v3.UpstreamConnectionOptions',
    allowedNames: [
      'upstream_connection_options',
      'upstreamConnectionOptions',
    ],
  },
  upstream_http_protocol_options: {
    type: 'envoy.config.core.v3.UpstreamHttpProtocolOptions',
    allowedNames: [
      'upstream_http_protocol_options',
      'upstreamHttpProtocolOptions',
    ],
  },
  use_tcp_for_dns_lookups: {
    type: 'bool',
    allowedNames: [
      'use_tcp_for_dns_lookups',
      'useTcpForDnsLookups',
    ],
  },
  wait_for_warm_on_init: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'wait_for_warm_on_init',
      'waitForWarmOnInit',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'type',
      'cluster_type',
    ],
    required: false,
    group: 'cluster_discovery_type',
  },
  {
    fields: [
      'ring_hash_lb_config',
      'maglev_lb_config',
      'original_dst_lb_config',
      'least_request_lb_config',
      'round_robin_lb_config',
    ],
    required: false,
    group: 'lb_config',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    DiscoveryType:: (import 'cluster-discovery-type.libsonnet').definition,
    LbPolicy:: (import 'cluster-lb-policy.libsonnet').definition,
    DnsLookupFamily:: (import 'cluster-dns-lookup-family.libsonnet').definition,
    ClusterProtocolSelection:: (import 'cluster-cluster-protocol-selection.libsonnet').definition,
    TransportSocketMatch:: (import 'cluster-transport-socket-match.libsonnet').definition,
    CustomClusterType:: (import 'cluster-custom-cluster-type.libsonnet').definition,
    EdsClusterConfig:: (import 'cluster-eds-cluster-config.libsonnet').definition,
    LbSubsetConfig:: (import 'cluster-lb-subset-config.libsonnet').definition,
    SlowStartConfig:: (import 'cluster-slow-start-config.libsonnet').definition,
    RoundRobinLbConfig:: (import 'cluster-round-robin-lb-config.libsonnet').definition,
    LeastRequestLbConfig:: (import 'cluster-least-request-lb-config.libsonnet').definition,
    RingHashLbConfig:: (import 'cluster-ring-hash-lb-config.libsonnet').definition,
    MaglevLbConfig:: (import 'cluster-maglev-lb-config.libsonnet').definition,
    OriginalDstLbConfig:: (import 'cluster-original-dst-lb-config.libsonnet').definition,
    CommonLbConfig:: (import 'cluster-common-lb-config.libsonnet').definition,
    RefreshRate:: (import 'cluster-refresh-rate.libsonnet').definition,
    PreconnectPolicy:: (import 'cluster-preconnect-policy.libsonnet').definition,
    TypedExtensionProtocolOptionsEntry:: (import 'cluster-typed-extension-protocol-options-entry.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withAltStatName:: function(val) validator.validateField(self + { alt_stat_name: val }, 'alt_stat_name', type + '.withAltStatName'),
    withCircuitBreakers:: function(val) validator.validateField(self + { circuit_breakers: val }, 'circuit_breakers', type + '.withCircuitBreakers'),
    withCleanupInterval:: function(val) validator.validateField(self + { cleanup_interval: val }, 'cleanup_interval', type + '.withCleanupInterval'),
    withCloseConnectionsOnHostHealthFailure:: function(val) validator.validateField(self + { close_connections_on_host_health_failure: val }, 'close_connections_on_host_health_failure', type + '.withCloseConnectionsOnHostHealthFailure'),
    withClusterType:: function(val) validator.validateField(self + { cluster_type: val }, 'cluster_type', type + '.withClusterType'),
    withCommonHttpProtocolOptions:: function(val) validator.validateField(self + { common_http_protocol_options: val }, 'common_http_protocol_options', type + '.withCommonHttpProtocolOptions'),
    withCommonLbConfig:: function(val) validator.validateField(self + { common_lb_config: val }, 'common_lb_config', type + '.withCommonLbConfig'),
    withConnectTimeout:: function(val) validator.validateField(self + { connect_timeout: val }, 'connect_timeout', type + '.withConnectTimeout'),
    withConnectionPoolPerDownstreamConnection:: function(val) validator.validateField(self + { connection_pool_per_downstream_connection: val }, 'connection_pool_per_downstream_connection', type + '.withConnectionPoolPerDownstreamConnection'),
    withDnsFailureRefreshRate:: function(val) validator.validateField(self + { dns_failure_refresh_rate: val }, 'dns_failure_refresh_rate', type + '.withDnsFailureRefreshRate'),
    withDnsLookupFamily:: function(val) validator.validateField(self + { dns_lookup_family: val }, 'dns_lookup_family', type + '.withDnsLookupFamily'),
    withDnsRefreshRate:: function(val) validator.validateField(self + { dns_refresh_rate: val }, 'dns_refresh_rate', type + '.withDnsRefreshRate'),
    withDnsResolutionConfig:: function(val) validator.validateField(self + { dns_resolution_config: val }, 'dns_resolution_config', type + '.withDnsResolutionConfig'),
    withDnsResolvers:: function(val) validator.validateField(self + { dns_resolvers: val }, 'dns_resolvers', type + '.withDnsResolvers'),
    withEdsClusterConfig:: function(val) validator.validateField(self + { eds_cluster_config: val }, 'eds_cluster_config', type + '.withEdsClusterConfig'),
    withFilters:: function(val) validator.validateField(self + { filters: val }, 'filters', type + '.withFilters'),
    withHealthChecks:: function(val) validator.validateField(self + { health_checks: val }, 'health_checks', type + '.withHealthChecks'),
    withHttp2ProtocolOptions:: function(val) validator.validateField(self + { http2_protocol_options: val }, 'http2_protocol_options', type + '.withHttp2ProtocolOptions'),
    withHttpProtocolOptions:: function(val) validator.validateField(self + { http_protocol_options: val }, 'http_protocol_options', type + '.withHttpProtocolOptions'),
    withIgnoreHealthOnHostRemoval:: function(val) validator.validateField(self + { ignore_health_on_host_removal: val }, 'ignore_health_on_host_removal', type + '.withIgnoreHealthOnHostRemoval'),
    withLbPolicy:: function(val) validator.validateField(self + { lb_policy: val }, 'lb_policy', type + '.withLbPolicy'),
    withLbSubsetConfig:: function(val) validator.validateField(self + { lb_subset_config: val }, 'lb_subset_config', type + '.withLbSubsetConfig'),
    withLeastRequestLbConfig:: function(val) validator.validateField(self + { least_request_lb_config: val }, 'least_request_lb_config', type + '.withLeastRequestLbConfig'),
    withLoadAssignment:: function(val) validator.validateField(self + { load_assignment: val }, 'load_assignment', type + '.withLoadAssignment'),
    withLoadBalancingPolicy:: function(val) validator.validateField(self + { load_balancing_policy: val }, 'load_balancing_policy', type + '.withLoadBalancingPolicy'),
    withLrsServer:: function(val) validator.validateField(self + { lrs_server: val }, 'lrs_server', type + '.withLrsServer'),
    withMaglevLbConfig:: function(val) validator.validateField(self + { maglev_lb_config: val }, 'maglev_lb_config', type + '.withMaglevLbConfig'),
    withMaxRequestsPerConnection:: function(val) validator.validateField(self + { max_requests_per_connection: val }, 'max_requests_per_connection', type + '.withMaxRequestsPerConnection'),
    withMetadata:: function(val) validator.validateField(self + { metadata: val }, 'metadata', type + '.withMetadata'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withOriginalDstLbConfig:: function(val) validator.validateField(self + { original_dst_lb_config: val }, 'original_dst_lb_config', type + '.withOriginalDstLbConfig'),
    withOutlierDetection:: function(val) validator.validateField(self + { outlier_detection: val }, 'outlier_detection', type + '.withOutlierDetection'),
    withPerConnectionBufferLimitBytes:: function(val) validator.validateField(self + { per_connection_buffer_limit_bytes: val }, 'per_connection_buffer_limit_bytes', type + '.withPerConnectionBufferLimitBytes'),
    withPreconnectPolicy:: function(val) validator.validateField(self + { preconnect_policy: val }, 'preconnect_policy', type + '.withPreconnectPolicy'),
    withProtocolSelection:: function(val) validator.validateField(self + { protocol_selection: val }, 'protocol_selection', type + '.withProtocolSelection'),
    withRespectDnsTtl:: function(val) validator.validateField(self + { respect_dns_ttl: val }, 'respect_dns_ttl', type + '.withRespectDnsTtl'),
    withRingHashLbConfig:: function(val) validator.validateField(self + { ring_hash_lb_config: val }, 'ring_hash_lb_config', type + '.withRingHashLbConfig'),
    withRoundRobinLbConfig:: function(val) validator.validateField(self + { round_robin_lb_config: val }, 'round_robin_lb_config', type + '.withRoundRobinLbConfig'),
    withTrackClusterStats:: function(val) validator.validateField(self + { track_cluster_stats: val }, 'track_cluster_stats', type + '.withTrackClusterStats'),
    withTrackTimeoutBudgets:: function(val) validator.validateField(self + { track_timeout_budgets: val }, 'track_timeout_budgets', type + '.withTrackTimeoutBudgets'),
    withTransportSocket:: function(val) validator.validateField(self + { transport_socket: val }, 'transport_socket', type + '.withTransportSocket'),
    withTransportSocketMatches:: function(val) validator.validateField(self + { transport_socket_matches: val }, 'transport_socket_matches', type + '.withTransportSocketMatches'),
    withType:: function(val) validator.validateField(self + { type: val }, 'type', type + '.withType'),
    withTypedDnsResolverConfig:: function(val) validator.validateField(self + { typed_dns_resolver_config: val }, 'typed_dns_resolver_config', type + '.withTypedDnsResolverConfig'),
    withTypedExtensionProtocolOptions:: function(val) validator.validateField(self + { typed_extension_protocol_options: val }, 'typed_extension_protocol_options', type + '.withTypedExtensionProtocolOptions'),
    withUpstreamBindConfig:: function(val) validator.validateField(self + { upstream_bind_config: val }, 'upstream_bind_config', type + '.withUpstreamBindConfig'),
    withUpstreamConfig:: function(val) validator.validateField(self + { upstream_config: val }, 'upstream_config', type + '.withUpstreamConfig'),
    withUpstreamConnectionOptions:: function(val) validator.validateField(self + { upstream_connection_options: val }, 'upstream_connection_options', type + '.withUpstreamConnectionOptions'),
    withUpstreamHttpProtocolOptions:: function(val) validator.validateField(self + { upstream_http_protocol_options: val }, 'upstream_http_protocol_options', type + '.withUpstreamHttpProtocolOptions'),
    withUseTcpForDnsLookups:: function(val) validator.validateField(self + { use_tcp_for_dns_lookups: val }, 'use_tcp_for_dns_lookups', type + '.withUseTcpForDnsLookups'),
    withWaitForWarmOnInit:: function(val) validator.validateField(self + { wait_for_warm_on_init: val }, 'wait_for_warm_on_init', type + '.withWaitForWarmOnInit'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
