// Message type: envoy.config.bootstrap.v3.Bootstrap
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.bootstrap.v3.Bootstrap';
local generator = import '../generator.libsonnet';
local fields = {
  admin: {
    type: 'envoy.config.bootstrap.v3.Admin',
    allowedNames: [
      'admin',
    ],
  },
  bootstrap_extensions: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'bootstrap_extensions',
      'bootstrapExtensions',
    ],
    containerType: 'list',
  },
  certificate_provider_instances: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'certificate_provider_instances',
      'certificateProviderInstances',
    ],
    containerType: 'map',
  },
  cluster_manager: {
    type: 'envoy.config.bootstrap.v3.ClusterManager',
    allowedNames: [
      'cluster_manager',
      'clusterManager',
    ],
  },
  config_sources: {
    type: 'envoy.config.core.v3.ConfigSource',
    allowedNames: [
      'config_sources',
      'configSources',
    ],
    containerType: 'list',
  },
  default_config_source: {
    type: 'envoy.config.core.v3.ConfigSource',
    allowedNames: [
      'default_config_source',
      'defaultConfigSource',
    ],
  },
  default_regex_engine: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'default_regex_engine',
      'defaultRegexEngine',
    ],
  },
  default_socket_interface: {
    type: 'string',
    allowedNames: [
      'default_socket_interface',
      'defaultSocketInterface',
    ],
  },
  dns_resolution_config: {
    type: 'envoy.config.core.v3.DnsResolutionConfig',
    allowedNames: [
      'dns_resolution_config',
      'dnsResolutionConfig',
    ],
  },
  dynamic_resources: {
    type: 'envoy.config.bootstrap.v3.Bootstrap.DynamicResources',
    allowedNames: [
      'dynamic_resources',
      'dynamicResources',
    ],
  },
  enable_dispatcher_stats: {
    type: 'bool',
    allowedNames: [
      'enable_dispatcher_stats',
      'enableDispatcherStats',
    ],
  },
  fatal_actions: {
    type: 'envoy.config.bootstrap.v3.FatalAction',
    allowedNames: [
      'fatal_actions',
      'fatalActions',
    ],
    containerType: 'list',
  },
  flags_path: {
    type: 'string',
    allowedNames: [
      'flags_path',
      'flagsPath',
    ],
  },
  hds_config: {
    type: 'envoy.config.core.v3.ApiConfigSource',
    allowedNames: [
      'hds_config',
      'hdsConfig',
    ],
  },
  header_prefix: {
    type: 'string',
    allowedNames: [
      'header_prefix',
      'headerPrefix',
    ],
  },
  inline_headers: {
    type: 'envoy.config.bootstrap.v3.CustomInlineHeader',
    allowedNames: [
      'inline_headers',
      'inlineHeaders',
    ],
    containerType: 'list',
  },
  layered_runtime: {
    type: 'envoy.config.bootstrap.v3.LayeredRuntime',
    allowedNames: [
      'layered_runtime',
      'layeredRuntime',
    ],
  },
  node: {
    type: 'envoy.config.core.v3.Node',
    allowedNames: [
      'node',
    ],
  },
  node_context_params: {
    type: 'string',
    allowedNames: [
      'node_context_params',
      'nodeContextParams',
    ],
    containerType: 'list',
  },
  overload_manager: {
    type: 'envoy.config.overload.v3.OverloadManager',
    allowedNames: [
      'overload_manager',
      'overloadManager',
    ],
  },
  perf_tracing_file_path: {
    type: 'string',
    allowedNames: [
      'perf_tracing_file_path',
      'perfTracingFilePath',
    ],
  },
  static_resources: {
    type: 'envoy.config.bootstrap.v3.Bootstrap.StaticResources',
    allowedNames: [
      'static_resources',
      'staticResources',
    ],
  },
  stats_config: {
    type: 'envoy.config.metrics.v3.StatsConfig',
    allowedNames: [
      'stats_config',
      'statsConfig',
    ],
  },
  stats_flush_interval: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'stats_flush_interval',
      'statsFlushInterval',
    ],
    constraints: {
      Duration: {
        gte: {
          nanos: 1000000,
        },
        lt: {
          seconds: 300,
        },
      },
    },
  },
  stats_flush_on_admin: {
    type: 'bool',
    allowedNames: [
      'stats_flush_on_admin',
      'statsFlushOnAdmin',
    ],
    constraints: {
      Bool: {
        const: true,
      },
    },
  },
  stats_server_version_override: {
    type: 'google.protobuf.UInt64Value',
    allowedNames: [
      'stats_server_version_override',
      'statsServerVersionOverride',
    ],
  },
  stats_sinks: {
    type: 'envoy.config.metrics.v3.StatsSink',
    allowedNames: [
      'stats_sinks',
      'statsSinks',
    ],
    containerType: 'list',
  },
  tracing: {
    type: 'envoy.config.trace.v3.Tracing',
    allowedNames: [
      'tracing',
    ],
  },
  typed_dns_resolver_config: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'typed_dns_resolver_config',
      'typedDnsResolverConfig',
    ],
  },
  use_tcp_for_dns_lookups: {
    type: 'bool',
    allowedNames: [
      'use_tcp_for_dns_lookups',
      'useTcpForDnsLookups',
    ],
  },
  watchdog: {
    type: 'envoy.config.bootstrap.v3.Watchdog',
    allowedNames: [
      'watchdog',
    ],
  },
  watchdogs: {
    type: 'envoy.config.bootstrap.v3.Watchdogs',
    allowedNames: [
      'watchdogs',
    ],
  },
  xds_config_tracker_extension: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'xds_config_tracker_extension',
      'xdsConfigTrackerExtension',
    ],
  },
  xds_delegate_extension: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'xds_delegate_extension',
      'xdsDelegateExtension',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'stats_flush_on_admin',
    ],
    required: false,
    group: 'stats_flush',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    StaticResources:: (import 'bootstrap-static-resources.libsonnet').definition,
    DynamicResources:: (import 'bootstrap-dynamic-resources.libsonnet').definition,
    CertificateProviderInstancesEntry:: (import 'bootstrap-certificate-provider-instances-entry.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withAdmin:: function(val) validator.validateField(self + { admin: val }, 'admin', type + '.withAdmin'),
    withBootstrapExtensions:: function(val) validator.validateField(self + { bootstrap_extensions: val }, 'bootstrap_extensions', type + '.withBootstrapExtensions'),
    withCertificateProviderInstances:: function(val) validator.validateField(self + { certificate_provider_instances: val }, 'certificate_provider_instances', type + '.withCertificateProviderInstances'),
    withClusterManager:: function(val) validator.validateField(self + { cluster_manager: val }, 'cluster_manager', type + '.withClusterManager'),
    withConfigSources:: function(val) validator.validateField(self + { config_sources: val }, 'config_sources', type + '.withConfigSources'),
    withDefaultConfigSource:: function(val) validator.validateField(self + { default_config_source: val }, 'default_config_source', type + '.withDefaultConfigSource'),
    withDefaultRegexEngine:: function(val) validator.validateField(self + { default_regex_engine: val }, 'default_regex_engine', type + '.withDefaultRegexEngine'),
    withDefaultSocketInterface:: function(val) validator.validateField(self + { default_socket_interface: val }, 'default_socket_interface', type + '.withDefaultSocketInterface'),
    withDnsResolutionConfig:: function(val) validator.validateField(self + { dns_resolution_config: val }, 'dns_resolution_config', type + '.withDnsResolutionConfig'),
    withDynamicResources:: function(val) validator.validateField(self + { dynamic_resources: val }, 'dynamic_resources', type + '.withDynamicResources'),
    withEnableDispatcherStats:: function(val) validator.validateField(self + { enable_dispatcher_stats: val }, 'enable_dispatcher_stats', type + '.withEnableDispatcherStats'),
    withFatalActions:: function(val) validator.validateField(self + { fatal_actions: val }, 'fatal_actions', type + '.withFatalActions'),
    withFlagsPath:: function(val) validator.validateField(self + { flags_path: val }, 'flags_path', type + '.withFlagsPath'),
    withHdsConfig:: function(val) validator.validateField(self + { hds_config: val }, 'hds_config', type + '.withHdsConfig'),
    withHeaderPrefix:: function(val) validator.validateField(self + { header_prefix: val }, 'header_prefix', type + '.withHeaderPrefix'),
    withInlineHeaders:: function(val) validator.validateField(self + { inline_headers: val }, 'inline_headers', type + '.withInlineHeaders'),
    withLayeredRuntime:: function(val) validator.validateField(self + { layered_runtime: val }, 'layered_runtime', type + '.withLayeredRuntime'),
    withNode:: function(val) validator.validateField(self + { node: val }, 'node', type + '.withNode'),
    withNodeContextParams:: function(val) validator.validateField(self + { node_context_params: val }, 'node_context_params', type + '.withNodeContextParams'),
    withOverloadManager:: function(val) validator.validateField(self + { overload_manager: val }, 'overload_manager', type + '.withOverloadManager'),
    withPerfTracingFilePath:: function(val) validator.validateField(self + { perf_tracing_file_path: val }, 'perf_tracing_file_path', type + '.withPerfTracingFilePath'),
    withStaticResources:: function(val) validator.validateField(self + { static_resources: val }, 'static_resources', type + '.withStaticResources'),
    withStatsConfig:: function(val) validator.validateField(self + { stats_config: val }, 'stats_config', type + '.withStatsConfig'),
    withStatsFlushInterval:: function(val) validator.validateField(self + { stats_flush_interval: val }, 'stats_flush_interval', type + '.withStatsFlushInterval'),
    withStatsFlushOnAdmin:: function(val) validator.validateField(self + { stats_flush_on_admin: val }, 'stats_flush_on_admin', type + '.withStatsFlushOnAdmin'),
    withStatsServerVersionOverride:: function(val) validator.validateField(self + { stats_server_version_override: val }, 'stats_server_version_override', type + '.withStatsServerVersionOverride'),
    withStatsSinks:: function(val) validator.validateField(self + { stats_sinks: val }, 'stats_sinks', type + '.withStatsSinks'),
    withTracing:: function(val) validator.validateField(self + { tracing: val }, 'tracing', type + '.withTracing'),
    withTypedDnsResolverConfig:: function(val) validator.validateField(self + { typed_dns_resolver_config: val }, 'typed_dns_resolver_config', type + '.withTypedDnsResolverConfig'),
    withUseTcpForDnsLookups:: function(val) validator.validateField(self + { use_tcp_for_dns_lookups: val }, 'use_tcp_for_dns_lookups', type + '.withUseTcpForDnsLookups'),
    withWatchdog:: function(val) validator.validateField(self + { watchdog: val }, 'watchdog', type + '.withWatchdog'),
    withWatchdogs:: function(val) validator.validateField(self + { watchdogs: val }, 'watchdogs', type + '.withWatchdogs'),
    withXdsConfigTrackerExtension:: function(val) validator.validateField(self + { xds_config_tracker_extension: val }, 'xds_config_tracker_extension', type + '.withXdsConfigTrackerExtension'),
    withXdsDelegateExtension:: function(val) validator.validateField(self + { xds_delegate_extension: val }, 'xds_delegate_extension', type + '.withXdsDelegateExtension'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
