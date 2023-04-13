{
  envoy: {
    config: {
      accesslog: {
        v3: {
          AccessLog: (import 'pkg/envoy.config.accesslog.v3/access-log.libsonnet').definition,
          AccessLogFilter: (import 'pkg/envoy.config.accesslog.v3/access-log-filter.libsonnet').definition,
          AndFilter: (import 'pkg/envoy.config.accesslog.v3/and-filter.libsonnet').definition,
          ComparisonFilter: (import 'pkg/envoy.config.accesslog.v3/comparison-filter.libsonnet').definition,
          DurationFilter: (import 'pkg/envoy.config.accesslog.v3/duration-filter.libsonnet').definition,
          ExtensionFilter: (import 'pkg/envoy.config.accesslog.v3/extension-filter.libsonnet').definition,
          GrpcStatusFilter: (import 'pkg/envoy.config.accesslog.v3/grpc-status-filter.libsonnet').definition,
          HeaderFilter: (import 'pkg/envoy.config.accesslog.v3/header-filter.libsonnet').definition,
          MetadataFilter: (import 'pkg/envoy.config.accesslog.v3/metadata-filter.libsonnet').definition,
          NotHealthCheckFilter: (import 'pkg/envoy.config.accesslog.v3/not-health-check-filter.libsonnet').definition,
          OrFilter: (import 'pkg/envoy.config.accesslog.v3/or-filter.libsonnet').definition,
          ResponseFlagFilter: (import 'pkg/envoy.config.accesslog.v3/response-flag-filter.libsonnet').definition,
          RuntimeFilter: (import 'pkg/envoy.config.accesslog.v3/runtime-filter.libsonnet').definition,
          StatusCodeFilter: (import 'pkg/envoy.config.accesslog.v3/status-code-filter.libsonnet').definition,
          TraceableFilter: (import 'pkg/envoy.config.accesslog.v3/traceable-filter.libsonnet').definition,
        },
      },
      bootstrap: {
        v3: {
          Admin: (import 'pkg/envoy.config.bootstrap.v3/admin.libsonnet').definition,
          Bootstrap: (import 'pkg/envoy.config.bootstrap.v3/bootstrap.libsonnet').definition,
          ClusterManager: (import 'pkg/envoy.config.bootstrap.v3/cluster-manager.libsonnet').definition,
          CustomInlineHeader: (import 'pkg/envoy.config.bootstrap.v3/custom-inline-header.libsonnet').definition,
          FatalAction: (import 'pkg/envoy.config.bootstrap.v3/fatal-action.libsonnet').definition,
          LayeredRuntime: (import 'pkg/envoy.config.bootstrap.v3/layered-runtime.libsonnet').definition,
          Runtime: (import 'pkg/envoy.config.bootstrap.v3/runtime.libsonnet').definition,
          RuntimeLayer: (import 'pkg/envoy.config.bootstrap.v3/runtime-layer.libsonnet').definition,
          Watchdog: (import 'pkg/envoy.config.bootstrap.v3/watchdog.libsonnet').definition,
          Watchdogs: (import 'pkg/envoy.config.bootstrap.v3/watchdogs.libsonnet').definition,
        },
      },
      cluster: {
        v3: {
          CircuitBreakers: (import 'pkg/envoy.config.cluster.v3/circuit-breakers.libsonnet').definition,
          Cluster: (import 'pkg/envoy.config.cluster.v3/cluster.libsonnet').definition,
          ClusterCollection: (import 'pkg/envoy.config.cluster.v3/cluster-collection.libsonnet').definition,
          Filter: (import 'pkg/envoy.config.cluster.v3/filter.libsonnet').definition,
          LoadBalancingPolicy: (import 'pkg/envoy.config.cluster.v3/load-balancing-policy.libsonnet').definition,
          OutlierDetection: (import 'pkg/envoy.config.cluster.v3/outlier-detection.libsonnet').definition,
          TrackClusterStats: (import 'pkg/envoy.config.cluster.v3/track-cluster-stats.libsonnet').definition,
          UpstreamConnectionOptions: (import 'pkg/envoy.config.cluster.v3/upstream-connection-options.libsonnet').definition,
        },
      },
      common: {
        key_value: {
          v3: {
            KeyValueStoreConfig: (import 'pkg/envoy.config.common.key_value.v3/key-value-store-config.libsonnet').definition,
          },
        },
        matcher: {
          v3: {
            HttpGenericBodyMatch: (import 'pkg/envoy.config.common.matcher.v3/http-generic-body-match.libsonnet').definition,
            HttpHeadersMatch: (import 'pkg/envoy.config.common.matcher.v3/http-headers-match.libsonnet').definition,
            MatchPredicate: (import 'pkg/envoy.config.common.matcher.v3/match-predicate.libsonnet').definition,
            Matcher: (import 'pkg/envoy.config.common.matcher.v3/matcher.libsonnet').definition,
          },
        },
        mutation_rules: {
          v3: {
            HeaderMutation: (import 'pkg/envoy.config.common.mutation_rules.v3/header-mutation.libsonnet').definition,
            HeaderMutationRules: (import 'pkg/envoy.config.common.mutation_rules.v3/header-mutation-rules.libsonnet').definition,
          },
        },
      },
      core: {
        v3: {
          Address: (import 'pkg/envoy.config.core.v3/address.libsonnet').definition,
          AggregatedConfigSource: (import 'pkg/envoy.config.core.v3/aggregated-config-source.libsonnet').definition,
          AlternateProtocolsCacheOptions: (import 'pkg/envoy.config.core.v3/alternate-protocols-cache-options.libsonnet').definition,
          ApiConfigSource: (import 'pkg/envoy.config.core.v3/api-config-source.libsonnet').definition,
          ApiVersion: (import 'pkg/envoy.config.core.v3/api-version.libsonnet').definition,
          AsyncDataSource: (import 'pkg/envoy.config.core.v3/async-data-source.libsonnet').definition,
          BackoffStrategy: (import 'pkg/envoy.config.core.v3/backoff-strategy.libsonnet').definition,
          BindConfig: (import 'pkg/envoy.config.core.v3/bind-config.libsonnet').definition,
          BuildVersion: (import 'pkg/envoy.config.core.v3/build-version.libsonnet').definition,
          CidrRange: (import 'pkg/envoy.config.core.v3/cidr-range.libsonnet').definition,
          ConfigSource: (import 'pkg/envoy.config.core.v3/config-source.libsonnet').definition,
          ControlPlane: (import 'pkg/envoy.config.core.v3/control-plane.libsonnet').definition,
          DataSource: (import 'pkg/envoy.config.core.v3/data-source.libsonnet').definition,
          DnsResolutionConfig: (import 'pkg/envoy.config.core.v3/dns-resolution-config.libsonnet').definition,
          DnsResolverOptions: (import 'pkg/envoy.config.core.v3/dns-resolver-options.libsonnet').definition,
          EnvoyInternalAddress: (import 'pkg/envoy.config.core.v3/envoy-internal-address.libsonnet').definition,
          EventServiceConfig: (import 'pkg/envoy.config.core.v3/event-service-config.libsonnet').definition,
          Extension: (import 'pkg/envoy.config.core.v3/extension.libsonnet').definition,
          ExtensionConfigSource: (import 'pkg/envoy.config.core.v3/extension-config-source.libsonnet').definition,
          ExtraSourceAddress: (import 'pkg/envoy.config.core.v3/extra-source-address.libsonnet').definition,
          GrpcMethodList: (import 'pkg/envoy.config.core.v3/grpc-method-list.libsonnet').definition,
          GrpcProtocolOptions: (import 'pkg/envoy.config.core.v3/grpc-protocol-options.libsonnet').definition,
          GrpcService: (import 'pkg/envoy.config.core.v3/grpc-service.libsonnet').definition,
          HeaderMap: (import 'pkg/envoy.config.core.v3/header-map.libsonnet').definition,
          HeaderValue: (import 'pkg/envoy.config.core.v3/header-value.libsonnet').definition,
          HeaderValueOption: (import 'pkg/envoy.config.core.v3/header-value-option.libsonnet').definition,
          HealthCheck: (import 'pkg/envoy.config.core.v3/health-check.libsonnet').definition,
          HealthStatus: (import 'pkg/envoy.config.core.v3/health-status.libsonnet').definition,
          HealthStatusSet: (import 'pkg/envoy.config.core.v3/health-status-set.libsonnet').definition,
          Http1ProtocolOptions: (import 'pkg/envoy.config.core.v3/http-1-protocol-options.libsonnet').definition,
          Http2ProtocolOptions: (import 'pkg/envoy.config.core.v3/http-2-protocol-options.libsonnet').definition,
          Http3ProtocolOptions: (import 'pkg/envoy.config.core.v3/http-3-protocol-options.libsonnet').definition,
          HttpProtocolOptions: (import 'pkg/envoy.config.core.v3/http-protocol-options.libsonnet').definition,
          HttpUri: (import 'pkg/envoy.config.core.v3/http-uri.libsonnet').definition,
          KeepaliveSettings: (import 'pkg/envoy.config.core.v3/keepalive-settings.libsonnet').definition,
          Locality: (import 'pkg/envoy.config.core.v3/locality.libsonnet').definition,
          Metadata: (import 'pkg/envoy.config.core.v3/metadata.libsonnet').definition,
          Node: (import 'pkg/envoy.config.core.v3/node.libsonnet').definition,
          PathConfigSource: (import 'pkg/envoy.config.core.v3/path-config-source.libsonnet').definition,
          Pipe: (import 'pkg/envoy.config.core.v3/pipe.libsonnet').definition,
          ProxyProtocolConfig: (import 'pkg/envoy.config.core.v3/proxy-protocol-config.libsonnet').definition,
          QueryParameter: (import 'pkg/envoy.config.core.v3/query-parameter.libsonnet').definition,
          QuicKeepAliveSettings: (import 'pkg/envoy.config.core.v3/quic-keep-alive-settings.libsonnet').definition,
          QuicProtocolOptions: (import 'pkg/envoy.config.core.v3/quic-protocol-options.libsonnet').definition,
          RateLimitSettings: (import 'pkg/envoy.config.core.v3/rate-limit-settings.libsonnet').definition,
          RemoteDataSource: (import 'pkg/envoy.config.core.v3/remote-data-source.libsonnet').definition,
          RequestMethod: (import 'pkg/envoy.config.core.v3/request-method.libsonnet').definition,
          RetryPolicy: (import 'pkg/envoy.config.core.v3/retry-policy.libsonnet').definition,
          RoutingPriority: (import 'pkg/envoy.config.core.v3/routing-priority.libsonnet').definition,
          RuntimeDouble: (import 'pkg/envoy.config.core.v3/runtime-double.libsonnet').definition,
          RuntimeFeatureFlag: (import 'pkg/envoy.config.core.v3/runtime-feature-flag.libsonnet').definition,
          RuntimeFractionalPercent: (import 'pkg/envoy.config.core.v3/runtime-fractional-percent.libsonnet').definition,
          RuntimePercent: (import 'pkg/envoy.config.core.v3/runtime-percent.libsonnet').definition,
          RuntimeUInt32: (import 'pkg/envoy.config.core.v3/runtime-u-int-32.libsonnet').definition,
          SchemeHeaderTransformation: (import 'pkg/envoy.config.core.v3/scheme-header-transformation.libsonnet').definition,
          SelfConfigSource: (import 'pkg/envoy.config.core.v3/self-config-source.libsonnet').definition,
          SocketAddress: (import 'pkg/envoy.config.core.v3/socket-address.libsonnet').definition,
          SocketOption: (import 'pkg/envoy.config.core.v3/socket-option.libsonnet').definition,
          SocketOptionsOverride: (import 'pkg/envoy.config.core.v3/socket-options-override.libsonnet').definition,
          SubstitutionFormatString: (import 'pkg/envoy.config.core.v3/substitution-format-string.libsonnet').definition,
          TcpKeepalive: (import 'pkg/envoy.config.core.v3/tcp-keepalive.libsonnet').definition,
          TcpProtocolOptions: (import 'pkg/envoy.config.core.v3/tcp-protocol-options.libsonnet').definition,
          TrafficDirection: (import 'pkg/envoy.config.core.v3/traffic-direction.libsonnet').definition,
          TransportSocket: (import 'pkg/envoy.config.core.v3/transport-socket.libsonnet').definition,
          TypedExtensionConfig: (import 'pkg/envoy.config.core.v3/typed-extension-config.libsonnet').definition,
          UdpSocketConfig: (import 'pkg/envoy.config.core.v3/udp-socket-config.libsonnet').definition,
          UpstreamHttpProtocolOptions: (import 'pkg/envoy.config.core.v3/upstream-http-protocol-options.libsonnet').definition,
          WatchedDirectory: (import 'pkg/envoy.config.core.v3/watched-directory.libsonnet').definition,
        },
      },
      endpoint: {
        v3: {
          ClusterLoadAssignment: (import 'pkg/envoy.config.endpoint.v3/cluster-load-assignment.libsonnet').definition,
          Endpoint: (import 'pkg/envoy.config.endpoint.v3/endpoint.libsonnet').definition,
          LbEndpoint: (import 'pkg/envoy.config.endpoint.v3/lb-endpoint.libsonnet').definition,
          LedsClusterLocalityConfig: (import 'pkg/envoy.config.endpoint.v3/leds-cluster-locality-config.libsonnet').definition,
          LocalityLbEndpoints: (import 'pkg/envoy.config.endpoint.v3/locality-lb-endpoints.libsonnet').definition,
        },
      },
      listener: {
        v3: {
          ActiveRawUdpListenerConfig: (import 'pkg/envoy.config.listener.v3/active-raw-udp-listener-config.libsonnet').definition,
          AdditionalAddress: (import 'pkg/envoy.config.listener.v3/additional-address.libsonnet').definition,
          ApiListener: (import 'pkg/envoy.config.listener.v3/api-listener.libsonnet').definition,
          Filter: (import 'pkg/envoy.config.listener.v3/filter.libsonnet').definition,
          FilterChain: (import 'pkg/envoy.config.listener.v3/filter-chain.libsonnet').definition,
          FilterChainMatch: (import 'pkg/envoy.config.listener.v3/filter-chain-match.libsonnet').definition,
          Listener: (import 'pkg/envoy.config.listener.v3/listener.libsonnet').definition,
          ListenerCollection: (import 'pkg/envoy.config.listener.v3/listener-collection.libsonnet').definition,
          ListenerFilter: (import 'pkg/envoy.config.listener.v3/listener-filter.libsonnet').definition,
          ListenerFilterChainMatchPredicate: (import 'pkg/envoy.config.listener.v3/listener-filter-chain-match-predicate.libsonnet').definition,
          QuicProtocolOptions: (import 'pkg/envoy.config.listener.v3/quic-protocol-options.libsonnet').definition,
          UdpListenerConfig: (import 'pkg/envoy.config.listener.v3/udp-listener-config.libsonnet').definition,
        },
      },
      metrics: {
        v3: {
          DogStatsdSink: (import 'pkg/envoy.config.metrics.v3/dog-statsd-sink.libsonnet').definition,
          HistogramBucketSettings: (import 'pkg/envoy.config.metrics.v3/histogram-bucket-settings.libsonnet').definition,
          HystrixSink: (import 'pkg/envoy.config.metrics.v3/hystrix-sink.libsonnet').definition,
          StatsConfig: (import 'pkg/envoy.config.metrics.v3/stats-config.libsonnet').definition,
          StatsMatcher: (import 'pkg/envoy.config.metrics.v3/stats-matcher.libsonnet').definition,
          StatsSink: (import 'pkg/envoy.config.metrics.v3/stats-sink.libsonnet').definition,
          StatsdSink: (import 'pkg/envoy.config.metrics.v3/statsd-sink.libsonnet').definition,
          TagSpecifier: (import 'pkg/envoy.config.metrics.v3/tag-specifier.libsonnet').definition,
        },
      },
      overload: {
        v3: {
          BufferFactoryConfig: (import 'pkg/envoy.config.overload.v3/buffer-factory-config.libsonnet').definition,
          OverloadAction: (import 'pkg/envoy.config.overload.v3/overload-action.libsonnet').definition,
          OverloadManager: (import 'pkg/envoy.config.overload.v3/overload-manager.libsonnet').definition,
          ResourceMonitor: (import 'pkg/envoy.config.overload.v3/resource-monitor.libsonnet').definition,
          ScaleTimersOverloadActionConfig: (import 'pkg/envoy.config.overload.v3/scale-timers-overload-action-config.libsonnet').definition,
          ScaledTrigger: (import 'pkg/envoy.config.overload.v3/scaled-trigger.libsonnet').definition,
          ThresholdTrigger: (import 'pkg/envoy.config.overload.v3/threshold-trigger.libsonnet').definition,
          Trigger: (import 'pkg/envoy.config.overload.v3/trigger.libsonnet').definition,
        },
      },
      ratelimit: {
        v3: {
          RateLimitServiceConfig: (import 'pkg/envoy.config.ratelimit.v3/rate-limit-service-config.libsonnet').definition,
        },
      },
      rbac: {
        v3: {
          Action: (import 'pkg/envoy.config.rbac.v3/action.libsonnet').definition,
          Permission: (import 'pkg/envoy.config.rbac.v3/permission.libsonnet').definition,
          Policy: (import 'pkg/envoy.config.rbac.v3/policy.libsonnet').definition,
          Principal: (import 'pkg/envoy.config.rbac.v3/principal.libsonnet').definition,
          RBAC: (import 'pkg/envoy.config.rbac.v3/rbac.libsonnet').definition,
        },
      },
      route: {
        v3: {
          ClusterSpecifierPlugin: (import 'pkg/envoy.config.route.v3/cluster-specifier-plugin.libsonnet').definition,
          CorsPolicy: (import 'pkg/envoy.config.route.v3/cors-policy.libsonnet').definition,
          Decorator: (import 'pkg/envoy.config.route.v3/decorator.libsonnet').definition,
          DirectResponseAction: (import 'pkg/envoy.config.route.v3/direct-response-action.libsonnet').definition,
          FilterAction: (import 'pkg/envoy.config.route.v3/filter-action.libsonnet').definition,
          FilterConfig: (import 'pkg/envoy.config.route.v3/filter-config.libsonnet').definition,
          HeaderMatcher: (import 'pkg/envoy.config.route.v3/header-matcher.libsonnet').definition,
          HedgePolicy: (import 'pkg/envoy.config.route.v3/hedge-policy.libsonnet').definition,
          InternalRedirectPolicy: (import 'pkg/envoy.config.route.v3/internal-redirect-policy.libsonnet').definition,
          NonForwardingAction: (import 'pkg/envoy.config.route.v3/non-forwarding-action.libsonnet').definition,
          QueryParameterMatcher: (import 'pkg/envoy.config.route.v3/query-parameter-matcher.libsonnet').definition,
          RateLimit: (import 'pkg/envoy.config.route.v3/rate-limit.libsonnet').definition,
          RedirectAction: (import 'pkg/envoy.config.route.v3/redirect-action.libsonnet').definition,
          RetryPolicy: (import 'pkg/envoy.config.route.v3/retry-policy.libsonnet').definition,
          Route: (import 'pkg/envoy.config.route.v3/route.libsonnet').definition,
          RouteAction: (import 'pkg/envoy.config.route.v3/route-action.libsonnet').definition,
          RouteConfiguration: (import 'pkg/envoy.config.route.v3/route-configuration.libsonnet').definition,
          RouteList: (import 'pkg/envoy.config.route.v3/route-list.libsonnet').definition,
          RouteMatch: (import 'pkg/envoy.config.route.v3/route-match.libsonnet').definition,
          ScopedRouteConfiguration: (import 'pkg/envoy.config.route.v3/scoped-route-configuration.libsonnet').definition,
          Tracing: (import 'pkg/envoy.config.route.v3/tracing.libsonnet').definition,
          Vhds: (import 'pkg/envoy.config.route.v3/vhds.libsonnet').definition,
          VirtualCluster: (import 'pkg/envoy.config.route.v3/virtual-cluster.libsonnet').definition,
          VirtualHost: (import 'pkg/envoy.config.route.v3/virtual-host.libsonnet').definition,
          WeightedCluster: (import 'pkg/envoy.config.route.v3/weighted-cluster.libsonnet').definition,
        },
      },
      tap: {
        v3: {
          BufferedAdminSink: (import 'pkg/envoy.config.tap.v3/buffered-admin-sink.libsonnet').definition,
          FilePerTapSink: (import 'pkg/envoy.config.tap.v3/file-per-tap-sink.libsonnet').definition,
          HttpGenericBodyMatch: (import 'pkg/envoy.config.tap.v3/http-generic-body-match.libsonnet').definition,
          HttpHeadersMatch: (import 'pkg/envoy.config.tap.v3/http-headers-match.libsonnet').definition,
          MatchPredicate: (import 'pkg/envoy.config.tap.v3/match-predicate.libsonnet').definition,
          OutputConfig: (import 'pkg/envoy.config.tap.v3/output-config.libsonnet').definition,
          OutputSink: (import 'pkg/envoy.config.tap.v3/output-sink.libsonnet').definition,
          StreamingAdminSink: (import 'pkg/envoy.config.tap.v3/streaming-admin-sink.libsonnet').definition,
          StreamingGrpcSink: (import 'pkg/envoy.config.tap.v3/streaming-grpc-sink.libsonnet').definition,
          TapConfig: (import 'pkg/envoy.config.tap.v3/tap-config.libsonnet').definition,
        },
      },
      trace: {
        v3: {
          Tracing: (import 'pkg/envoy.config.trace.v3/tracing.libsonnet').definition,
        },
      },
    },
    data: {
      dns: {
        v3: {
          DnsTable: (import 'pkg/envoy.data.dns.v3/dns-table.libsonnet').definition,
        },
      },
    },
    extensions: {
      access_loggers: {
        file: {
          v3: {
            FileAccessLog: (import 'pkg/envoy.extensions.access_loggers.file.v3/file-access-log.libsonnet').definition,
          },
        },
        filters: {
          cel: {
            v3: {
              ExpressionFilter: (import 'pkg/envoy.extensions.access_loggers.filters.cel.v3/expression-filter.libsonnet').definition,
            },
          },
        },
        grpc: {
          v3: {
            CommonGrpcAccessLogConfig: (import 'pkg/envoy.extensions.access_loggers.grpc.v3/common-grpc-access-log-config.libsonnet').definition,
            HttpGrpcAccessLogConfig: (import 'pkg/envoy.extensions.access_loggers.grpc.v3/http-grpc-access-log-config.libsonnet').definition,
            TcpGrpcAccessLogConfig: (import 'pkg/envoy.extensions.access_loggers.grpc.v3/tcp-grpc-access-log-config.libsonnet').definition,
          },
        },
        open_telemetry: {
          v3: {
            OpenTelemetryAccessLogConfig: (import 'pkg/envoy.extensions.access_loggers.open_telemetry.v3/open-telemetry-access-log-config.libsonnet').definition,
          },
        },
        stream: {
          v3: {
            StderrAccessLog: (import 'pkg/envoy.extensions.access_loggers.stream.v3/stderr-access-log.libsonnet').definition,
            StdoutAccessLog: (import 'pkg/envoy.extensions.access_loggers.stream.v3/stdout-access-log.libsonnet').definition,
          },
        },
        wasm: {
          v3: {
            WasmAccessLog: (import 'pkg/envoy.extensions.access_loggers.wasm.v3/wasm-access-log.libsonnet').definition,
          },
        },
      },
      bootstrap: {
        internal_listener: {
          v3: {
            InternalListener: (import 'pkg/envoy.extensions.bootstrap.internal_listener.v3/internal-listener.libsonnet').definition,
          },
        },
      },
      clusters: {
        aggregate: {
          v3: {
            ClusterConfig: (import 'pkg/envoy.extensions.clusters.aggregate.v3/cluster-config.libsonnet').definition,
          },
        },
        dynamic_forward_proxy: {
          v3: {
            ClusterConfig: (import 'pkg/envoy.extensions.clusters.dynamic_forward_proxy.v3/cluster-config.libsonnet').definition,
          },
        },
        redis: {
          v3: {
            RedisClusterConfig: (import 'pkg/envoy.extensions.clusters.redis.v3/redis-cluster-config.libsonnet').definition,
          },
        },
      },
      common: {
        async_files: {
          v3: {
            AsyncFileManagerConfig: (import 'pkg/envoy.extensions.common.async_files.v3/async-file-manager-config.libsonnet').definition,
          },
        },
        dynamic_forward_proxy: {
          v3: {
            DnsCacheCircuitBreakers: (import 'pkg/envoy.extensions.common.dynamic_forward_proxy.v3/dns-cache-circuit-breakers.libsonnet').definition,
            DnsCacheConfig: (import 'pkg/envoy.extensions.common.dynamic_forward_proxy.v3/dns-cache-config.libsonnet').definition,
          },
        },
        matching: {
          v3: {
            ExtensionWithMatcher: (import 'pkg/envoy.extensions.common.matching.v3/extension-with-matcher.libsonnet').definition,
          },
        },
        ratelimit: {
          v3: {
            LocalRateLimitDescriptor: (import 'pkg/envoy.extensions.common.ratelimit.v3/local-rate-limit-descriptor.libsonnet').definition,
            RateLimitDescriptor: (import 'pkg/envoy.extensions.common.ratelimit.v3/rate-limit-descriptor.libsonnet').definition,
            VhRateLimitsOptions: (import 'pkg/envoy.extensions.common.ratelimit.v3/vh-rate-limits-options.libsonnet').definition,
            XRateLimitHeadersRFCVersion: (import 'pkg/envoy.extensions.common.ratelimit.v3/x-rate-limit-headers-rfc-version.libsonnet').definition,
          },
        },
        tap: {
          v3: {
            AdminConfig: (import 'pkg/envoy.extensions.common.tap.v3/admin-config.libsonnet').definition,
            CommonExtensionConfig: (import 'pkg/envoy.extensions.common.tap.v3/common-extension-config.libsonnet').definition,
          },
        },
      },
      compression: {
        brotli: {
          compressor: {
            v3: {
              Brotli: (import 'pkg/envoy.extensions.compression.brotli.compressor.v3/brotli.libsonnet').definition,
            },
          },
          decompressor: {
            v3: {
              Brotli: (import 'pkg/envoy.extensions.compression.brotli.decompressor.v3/brotli.libsonnet').definition,
            },
          },
        },
        gzip: {
          compressor: {
            v3: {
              Gzip: (import 'pkg/envoy.extensions.compression.gzip.compressor.v3/gzip.libsonnet').definition,
            },
          },
          decompressor: {
            v3: {
              Gzip: (import 'pkg/envoy.extensions.compression.gzip.decompressor.v3/gzip.libsonnet').definition,
            },
          },
        },
        zstd: {
          compressor: {
            v3: {
              Zstd: (import 'pkg/envoy.extensions.compression.zstd.compressor.v3/zstd.libsonnet').definition,
            },
          },
          decompressor: {
            v3: {
              Zstd: (import 'pkg/envoy.extensions.compression.zstd.decompressor.v3/zstd.libsonnet').definition,
            },
          },
        },
      },
      config: {
        validators: {
          minimum_clusters: {
            v3: {
              MinimumClustersValidator: (import 'pkg/envoy.extensions.config.validators.minimum_clusters.v3/minimum-clusters-validator.libsonnet').definition,
            },
          },
        },
      },
      early_data: {
        v3: {
          DefaultEarlyDataPolicy: (import 'pkg/envoy.extensions.early_data.v3/default-early-data-policy.libsonnet').definition,
        },
      },
      filters: {
        common: {
          dependency: {
            v3: {
              Dependency: (import 'pkg/envoy.extensions.filters.common.dependency.v3/dependency.libsonnet').definition,
              FilterDependencies: (import 'pkg/envoy.extensions.filters.common.dependency.v3/filter-dependencies.libsonnet').definition,
              MatchingRequirements: (import 'pkg/envoy.extensions.filters.common.dependency.v3/matching-requirements.libsonnet').definition,
            },
          },
          fault: {
            v3: {
              FaultDelay: (import 'pkg/envoy.extensions.filters.common.fault.v3/fault-delay.libsonnet').definition,
              FaultRateLimit: (import 'pkg/envoy.extensions.filters.common.fault.v3/fault-rate-limit.libsonnet').definition,
            },
          },
          matcher: {
            action: {
              v3: {
                SkipFilter: (import 'pkg/envoy.extensions.filters.common.matcher.action.v3/skip-filter.libsonnet').definition,
              },
            },
          },
        },
        http: {
          adaptive_concurrency: {
            v3: {
              AdaptiveConcurrency: (import 'pkg/envoy.extensions.filters.http.adaptive_concurrency.v3/adaptive-concurrency.libsonnet').definition,
              GradientControllerConfig: (import 'pkg/envoy.extensions.filters.http.adaptive_concurrency.v3/gradient-controller-config.libsonnet').definition,
            },
          },
          admission_control: {
            v3: {
              AdmissionControl: (import 'pkg/envoy.extensions.filters.http.admission_control.v3/admission-control.libsonnet').definition,
            },
          },
          alternate_protocols_cache: {
            v3: {
              FilterConfig: (import 'pkg/envoy.extensions.filters.http.alternate_protocols_cache.v3/filter-config.libsonnet').definition,
            },
          },
          aws_lambda: {
            v3: {
              Config: (import 'pkg/envoy.extensions.filters.http.aws_lambda.v3/config.libsonnet').definition,
              PerRouteConfig: (import 'pkg/envoy.extensions.filters.http.aws_lambda.v3/per-route-config.libsonnet').definition,
            },
          },
          aws_request_signing: {
            v3: {
              AwsRequestSigning: (import 'pkg/envoy.extensions.filters.http.aws_request_signing.v3/aws-request-signing.libsonnet').definition,
            },
          },
          bandwidth_limit: {
            v3: {
              BandwidthLimit: (import 'pkg/envoy.extensions.filters.http.bandwidth_limit.v3/bandwidth-limit.libsonnet').definition,
            },
          },
          buffer: {
            v3: {
              Buffer: (import 'pkg/envoy.extensions.filters.http.buffer.v3/buffer.libsonnet').definition,
              BufferPerRoute: (import 'pkg/envoy.extensions.filters.http.buffer.v3/buffer-per-route.libsonnet').definition,
            },
          },
          cache: {
            v3: {
              CacheConfig: (import 'pkg/envoy.extensions.filters.http.cache.v3/cache-config.libsonnet').definition,
            },
          },
          cdn_loop: {
            v3: {
              CdnLoopConfig: (import 'pkg/envoy.extensions.filters.http.cdn_loop.v3/cdn-loop-config.libsonnet').definition,
            },
          },
          composite: {
            v3: {
              Composite: (import 'pkg/envoy.extensions.filters.http.composite.v3/composite.libsonnet').definition,
              ExecuteFilterAction: (import 'pkg/envoy.extensions.filters.http.composite.v3/execute-filter-action.libsonnet').definition,
            },
          },
          compressor: {
            v3: {
              Compressor: (import 'pkg/envoy.extensions.filters.http.compressor.v3/compressor.libsonnet').definition,
              CompressorOverrides: (import 'pkg/envoy.extensions.filters.http.compressor.v3/compressor-overrides.libsonnet').definition,
              CompressorPerRoute: (import 'pkg/envoy.extensions.filters.http.compressor.v3/compressor-per-route.libsonnet').definition,
              ResponseDirectionOverrides: (import 'pkg/envoy.extensions.filters.http.compressor.v3/response-direction-overrides.libsonnet').definition,
            },
          },
          cors: {
            v3: {
              Cors: (import 'pkg/envoy.extensions.filters.http.cors.v3/cors.libsonnet').definition,
              CorsPolicy: (import 'pkg/envoy.extensions.filters.http.cors.v3/cors-policy.libsonnet').definition,
            },
          },
          csrf: {
            v3: {
              CsrfPolicy: (import 'pkg/envoy.extensions.filters.http.csrf.v3/csrf-policy.libsonnet').definition,
            },
          },
          custom_response: {
            v3: {
              CustomResponse: (import 'pkg/envoy.extensions.filters.http.custom_response.v3/custom-response.libsonnet').definition,
            },
          },
          decompressor: {
            v3: {
              Decompressor: (import 'pkg/envoy.extensions.filters.http.decompressor.v3/decompressor.libsonnet').definition,
            },
          },
          dynamic_forward_proxy: {
            v3: {
              FilterConfig: (import 'pkg/envoy.extensions.filters.http.dynamic_forward_proxy.v3/filter-config.libsonnet').definition,
              PerRouteConfig: (import 'pkg/envoy.extensions.filters.http.dynamic_forward_proxy.v3/per-route-config.libsonnet').definition,
            },
          },
          ext_authz: {
            v3: {
              AuthorizationRequest: (import 'pkg/envoy.extensions.filters.http.ext_authz.v3/authorization-request.libsonnet').definition,
              AuthorizationResponse: (import 'pkg/envoy.extensions.filters.http.ext_authz.v3/authorization-response.libsonnet').definition,
              BufferSettings: (import 'pkg/envoy.extensions.filters.http.ext_authz.v3/buffer-settings.libsonnet').definition,
              CheckSettings: (import 'pkg/envoy.extensions.filters.http.ext_authz.v3/check-settings.libsonnet').definition,
              ExtAuthz: (import 'pkg/envoy.extensions.filters.http.ext_authz.v3/ext-authz.libsonnet').definition,
              ExtAuthzPerRoute: (import 'pkg/envoy.extensions.filters.http.ext_authz.v3/ext-authz-per-route.libsonnet').definition,
              HttpService: (import 'pkg/envoy.extensions.filters.http.ext_authz.v3/http-service.libsonnet').definition,
            },
          },
          ext_proc: {
            v3: {
              ExtProcOverrides: (import 'pkg/envoy.extensions.filters.http.ext_proc.v3/ext-proc-overrides.libsonnet').definition,
              ExtProcPerRoute: (import 'pkg/envoy.extensions.filters.http.ext_proc.v3/ext-proc-per-route.libsonnet').definition,
              ExternalProcessor: (import 'pkg/envoy.extensions.filters.http.ext_proc.v3/external-processor.libsonnet').definition,
              ProcessingMode: (import 'pkg/envoy.extensions.filters.http.ext_proc.v3/processing-mode.libsonnet').definition,
            },
          },
          fault: {
            v3: {
              FaultAbort: (import 'pkg/envoy.extensions.filters.http.fault.v3/fault-abort.libsonnet').definition,
              HTTPFault: (import 'pkg/envoy.extensions.filters.http.fault.v3/http-fault.libsonnet').definition,
            },
          },
          file_system_buffer: {
            v3: {
              BufferBehavior: (import 'pkg/envoy.extensions.filters.http.file_system_buffer.v3/buffer-behavior.libsonnet').definition,
              FileSystemBufferFilterConfig: (import 'pkg/envoy.extensions.filters.http.file_system_buffer.v3/file-system-buffer-filter-config.libsonnet').definition,
              StreamConfig: (import 'pkg/envoy.extensions.filters.http.file_system_buffer.v3/stream-config.libsonnet').definition,
            },
          },
          gcp_authn: {
            v3: {
              Audience: (import 'pkg/envoy.extensions.filters.http.gcp_authn.v3/audience.libsonnet').definition,
              GcpAuthnFilterConfig: (import 'pkg/envoy.extensions.filters.http.gcp_authn.v3/gcp-authn-filter-config.libsonnet').definition,
              TokenCacheConfig: (import 'pkg/envoy.extensions.filters.http.gcp_authn.v3/token-cache-config.libsonnet').definition,
              TokenHeader: (import 'pkg/envoy.extensions.filters.http.gcp_authn.v3/token-header.libsonnet').definition,
            },
          },
          grpc_http1_bridge: {
            v3: {
              Config: (import 'pkg/envoy.extensions.filters.http.grpc_http1_bridge.v3/config.libsonnet').definition,
            },
          },
          grpc_http1_reverse_bridge: {
            v3: {
              FilterConfig: (import 'pkg/envoy.extensions.filters.http.grpc_http1_reverse_bridge.v3/filter-config.libsonnet').definition,
              FilterConfigPerRoute: (import 'pkg/envoy.extensions.filters.http.grpc_http1_reverse_bridge.v3/filter-config-per-route.libsonnet').definition,
            },
          },
          grpc_json_transcoder: {
            v3: {
              GrpcJsonTranscoder: (import 'pkg/envoy.extensions.filters.http.grpc_json_transcoder.v3/grpc-json-transcoder.libsonnet').definition,
            },
          },
          grpc_stats: {
            v3: {
              FilterConfig: (import 'pkg/envoy.extensions.filters.http.grpc_stats.v3/filter-config.libsonnet').definition,
              FilterObject: (import 'pkg/envoy.extensions.filters.http.grpc_stats.v3/filter-object.libsonnet').definition,
            },
          },
          grpc_web: {
            v3: {
              GrpcWeb: (import 'pkg/envoy.extensions.filters.http.grpc_web.v3/grpc-web.libsonnet').definition,
            },
          },
          gzip: {
            v3: {
              Gzip: (import 'pkg/envoy.extensions.filters.http.gzip.v3/gzip.libsonnet').definition,
            },
          },
          header_to_metadata: {
            v3: {
              Config: (import 'pkg/envoy.extensions.filters.http.header_to_metadata.v3/config.libsonnet').definition,
            },
          },
          health_check: {
            v3: {
              HealthCheck: (import 'pkg/envoy.extensions.filters.http.health_check.v3/health-check.libsonnet').definition,
            },
          },
          ip_tagging: {
            v3: {
              IPTagging: (import 'pkg/envoy.extensions.filters.http.ip_tagging.v3/ip-tagging.libsonnet').definition,
            },
          },
          jwt_authn: {
            v3: {
              FilterStateRule: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/filter-state-rule.libsonnet').definition,
              JwksAsyncFetch: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwks-async-fetch.libsonnet').definition,
              JwtAuthentication: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwt-authentication.libsonnet').definition,
              JwtCacheConfig: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwt-cache-config.libsonnet').definition,
              JwtClaimToHeader: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwt-claim-to-header.libsonnet').definition,
              JwtHeader: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwt-header.libsonnet').definition,
              JwtProvider: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwt-provider.libsonnet').definition,
              JwtRequirement: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwt-requirement.libsonnet').definition,
              JwtRequirementAndList: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwt-requirement-and-list.libsonnet').definition,
              JwtRequirementOrList: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/jwt-requirement-or-list.libsonnet').definition,
              PerRouteConfig: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/per-route-config.libsonnet').definition,
              ProviderWithAudiences: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/provider-with-audiences.libsonnet').definition,
              RemoteJwks: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/remote-jwks.libsonnet').definition,
              RequirementRule: (import 'pkg/envoy.extensions.filters.http.jwt_authn.v3/requirement-rule.libsonnet').definition,
            },
          },
          kill_request: {
            v3: {
              KillRequest: (import 'pkg/envoy.extensions.filters.http.kill_request.v3/kill-request.libsonnet').definition,
            },
          },
          local_ratelimit: {
            v3: {
              LocalRateLimit: (import 'pkg/envoy.extensions.filters.http.local_ratelimit.v3/local-rate-limit.libsonnet').definition,
            },
          },
          lua: {
            v3: {
              Lua: (import 'pkg/envoy.extensions.filters.http.lua.v3/lua.libsonnet').definition,
              LuaPerRoute: (import 'pkg/envoy.extensions.filters.http.lua.v3/lua-per-route.libsonnet').definition,
            },
          },
          oauth2: {
            v3: {
              OAuth2: (import 'pkg/envoy.extensions.filters.http.oauth2.v3/o-auth-2.libsonnet').definition,
              OAuth2Config: (import 'pkg/envoy.extensions.filters.http.oauth2.v3/o-auth-2-config.libsonnet').definition,
              OAuth2Credentials: (import 'pkg/envoy.extensions.filters.http.oauth2.v3/o-auth-2-credentials.libsonnet').definition,
            },
          },
          on_demand: {
            v3: {
              OnDemand: (import 'pkg/envoy.extensions.filters.http.on_demand.v3/on-demand.libsonnet').definition,
              OnDemandCds: (import 'pkg/envoy.extensions.filters.http.on_demand.v3/on-demand-cds.libsonnet').definition,
              PerRouteConfig: (import 'pkg/envoy.extensions.filters.http.on_demand.v3/per-route-config.libsonnet').definition,
            },
          },
          original_src: {
            v3: {
              OriginalSrc: (import 'pkg/envoy.extensions.filters.http.original_src.v3/original-src.libsonnet').definition,
            },
          },
          rate_limit_quota: {
            v3: {
              RateLimitQuotaBucketSettings: (import 'pkg/envoy.extensions.filters.http.rate_limit_quota.v3/rate-limit-quota-bucket-settings.libsonnet').definition,
              RateLimitQuotaFilterConfig: (import 'pkg/envoy.extensions.filters.http.rate_limit_quota.v3/rate-limit-quota-filter-config.libsonnet').definition,
              RateLimitQuotaOverride: (import 'pkg/envoy.extensions.filters.http.rate_limit_quota.v3/rate-limit-quota-override.libsonnet').definition,
            },
          },
          ratelimit: {
            v3: {
              RateLimit: (import 'pkg/envoy.extensions.filters.http.ratelimit.v3/rate-limit.libsonnet').definition,
              RateLimitConfig: (import 'pkg/envoy.extensions.filters.http.ratelimit.v3/rate-limit-config.libsonnet').definition,
              RateLimitPerRoute: (import 'pkg/envoy.extensions.filters.http.ratelimit.v3/rate-limit-per-route.libsonnet').definition,
            },
          },
          rbac: {
            v3: {
              RBAC: (import 'pkg/envoy.extensions.filters.http.rbac.v3/rbac.libsonnet').definition,
              RBACPerRoute: (import 'pkg/envoy.extensions.filters.http.rbac.v3/rbac-per-route.libsonnet').definition,
            },
          },
          router: {
            v3: {
              Router: (import 'pkg/envoy.extensions.filters.http.router.v3/router.libsonnet').definition,
            },
          },
          set_metadata: {
            v3: {
              Config: (import 'pkg/envoy.extensions.filters.http.set_metadata.v3/config.libsonnet').definition,
            },
          },
          stateful_session: {
            v3: {
              StatefulSession: (import 'pkg/envoy.extensions.filters.http.stateful_session.v3/stateful-session.libsonnet').definition,
              StatefulSessionPerRoute: (import 'pkg/envoy.extensions.filters.http.stateful_session.v3/stateful-session-per-route.libsonnet').definition,
            },
          },
          tap: {
            v3: {
              Tap: (import 'pkg/envoy.extensions.filters.http.tap.v3/tap.libsonnet').definition,
            },
          },
          upstream_codec: {
            v3: {
              UpstreamCodec: (import 'pkg/envoy.extensions.filters.http.upstream_codec.v3/upstream-codec.libsonnet').definition,
            },
          },
          wasm: {
            v3: {
              Wasm: (import 'pkg/envoy.extensions.filters.http.wasm.v3/wasm.libsonnet').definition,
            },
          },
        },
        listener: {
          http_inspector: {
            v3: {
              HttpInspector: (import 'pkg/envoy.extensions.filters.listener.http_inspector.v3/http-inspector.libsonnet').definition,
            },
          },
          original_dst: {
            v3: {
              OriginalDst: (import 'pkg/envoy.extensions.filters.listener.original_dst.v3/original-dst.libsonnet').definition,
            },
          },
          original_src: {
            v3: {
              OriginalSrc: (import 'pkg/envoy.extensions.filters.listener.original_src.v3/original-src.libsonnet').definition,
            },
          },
          proxy_protocol: {
            v3: {
              ProxyProtocol: (import 'pkg/envoy.extensions.filters.listener.proxy_protocol.v3/proxy-protocol.libsonnet').definition,
            },
          },
          tls_inspector: {
            v3: {
              TlsInspector: (import 'pkg/envoy.extensions.filters.listener.tls_inspector.v3/tls-inspector.libsonnet').definition,
            },
          },
        },
        network: {
          connection_limit: {
            v3: {
              ConnectionLimit: (import 'pkg/envoy.extensions.filters.network.connection_limit.v3/connection-limit.libsonnet').definition,
            },
          },
          direct_response: {
            v3: {
              Config: (import 'pkg/envoy.extensions.filters.network.direct_response.v3/config.libsonnet').definition,
            },
          },
          dubbo_proxy: {
            router: {
              v3: {
                Router: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.router.v3/router.libsonnet').definition,
              },
            },
            v3: {
              Drds: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/drds.libsonnet').definition,
              DubboFilter: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/dubbo-filter.libsonnet').definition,
              DubboProxy: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/dubbo-proxy.libsonnet').definition,
              MethodMatch: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/method-match.libsonnet').definition,
              MultipleRouteConfiguration: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/multiple-route-configuration.libsonnet').definition,
              ProtocolType: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/protocol-type.libsonnet').definition,
              Route: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/route.libsonnet').definition,
              RouteAction: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/route-action.libsonnet').definition,
              RouteConfiguration: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/route-configuration.libsonnet').definition,
              RouteMatch: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/route-match.libsonnet').definition,
              SerializationType: (import 'pkg/envoy.extensions.filters.network.dubbo_proxy.v3/serialization-type.libsonnet').definition,
            },
          },
          echo: {
            v3: {
              Echo: (import 'pkg/envoy.extensions.filters.network.echo.v3/echo.libsonnet').definition,
            },
          },
          ext_authz: {
            v3: {
              ExtAuthz: (import 'pkg/envoy.extensions.filters.network.ext_authz.v3/ext-authz.libsonnet').definition,
            },
          },
          http_connection_manager: {
            v3: {
              EnvoyMobileHttpConnectionManager: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/envoy-mobile-http-connection-manager.libsonnet').definition,
              HttpConnectionManager: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/http-connection-manager.libsonnet').definition,
              HttpFilter: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/http-filter.libsonnet').definition,
              LocalReplyConfig: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/local-reply-config.libsonnet').definition,
              Rds: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/rds.libsonnet').definition,
              RequestIDExtension: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/request-id-extension.libsonnet').definition,
              ResponseMapper: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/response-mapper.libsonnet').definition,
              ScopedRds: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/scoped-rds.libsonnet').definition,
              ScopedRouteConfigurationsList: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/scoped-route-configurations-list.libsonnet').definition,
              ScopedRoutes: (import 'pkg/envoy.extensions.filters.network.http_connection_manager.v3/scoped-routes.libsonnet').definition,
            },
          },
          local_ratelimit: {
            v3: {
              LocalRateLimit: (import 'pkg/envoy.extensions.filters.network.local_ratelimit.v3/local-rate-limit.libsonnet').definition,
            },
          },
          mongo_proxy: {
            v3: {
              MongoProxy: (import 'pkg/envoy.extensions.filters.network.mongo_proxy.v3/mongo-proxy.libsonnet').definition,
            },
          },
          ratelimit: {
            v3: {
              RateLimit: (import 'pkg/envoy.extensions.filters.network.ratelimit.v3/rate-limit.libsonnet').definition,
            },
          },
          rbac: {
            v3: {
              RBAC: (import 'pkg/envoy.extensions.filters.network.rbac.v3/rbac.libsonnet').definition,
            },
          },
          redis_proxy: {
            v3: {
              RedisProtocolOptions: (import 'pkg/envoy.extensions.filters.network.redis_proxy.v3/redis-protocol-options.libsonnet').definition,
              RedisProxy: (import 'pkg/envoy.extensions.filters.network.redis_proxy.v3/redis-proxy.libsonnet').definition,
            },
          },
          sni_cluster: {
            v3: {
              SniCluster: (import 'pkg/envoy.extensions.filters.network.sni_cluster.v3/sni-cluster.libsonnet').definition,
            },
          },
          sni_dynamic_forward_proxy: {
            v3: {
              FilterConfig: (import 'pkg/envoy.extensions.filters.network.sni_dynamic_forward_proxy.v3/filter-config.libsonnet').definition,
            },
          },
          tcp_proxy: {
            v3: {
              TcpProxy: (import 'pkg/envoy.extensions.filters.network.tcp_proxy.v3/tcp-proxy.libsonnet').definition,
            },
          },
          thrift_proxy: {
            filters: {
              header_to_metadata: {
                v3: {
                  HeaderToMetadata: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.filters.header_to_metadata.v3/header-to-metadata.libsonnet').definition,
                },
              },
              payload_to_metadata: {
                v3: {
                  PayloadToMetadata: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.filters.payload_to_metadata.v3/payload-to-metadata.libsonnet').definition,
                },
              },
              ratelimit: {
                v3: {
                  RateLimit: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.filters.ratelimit.v3/rate-limit.libsonnet').definition,
                },
              },
            },
            router: {
              v3: {
                Router: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.router.v3/router.libsonnet').definition,
              },
            },
            v3: {
              ProtocolType: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/protocol-type.libsonnet').definition,
              Route: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/route.libsonnet').definition,
              RouteAction: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/route-action.libsonnet').definition,
              RouteConfiguration: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/route-configuration.libsonnet').definition,
              RouteMatch: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/route-match.libsonnet').definition,
              ThriftFilter: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/thrift-filter.libsonnet').definition,
              ThriftProtocolOptions: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/thrift-protocol-options.libsonnet').definition,
              ThriftProxy: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/thrift-proxy.libsonnet').definition,
              TransportType: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/transport-type.libsonnet').definition,
              Trds: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/trds.libsonnet').definition,
              WeightedCluster: (import 'pkg/envoy.extensions.filters.network.thrift_proxy.v3/weighted-cluster.libsonnet').definition,
            },
          },
          wasm: {
            v3: {
              Wasm: (import 'pkg/envoy.extensions.filters.network.wasm.v3/wasm.libsonnet').definition,
            },
          },
          zookeeper_proxy: {
            v3: {
              ZooKeeperProxy: (import 'pkg/envoy.extensions.filters.network.zookeeper_proxy.v3/zoo-keeper-proxy.libsonnet').definition,
            },
          },
        },
        udp: {
          dns_filter: {
            v3: {
              DnsFilterConfig: (import 'pkg/envoy.extensions.filters.udp.dns_filter.v3/dns-filter-config.libsonnet').definition,
            },
          },
          udp_proxy: {
            v3: {
              Route: (import 'pkg/envoy.extensions.filters.udp.udp_proxy.v3/route.libsonnet').definition,
              UdpProxyConfig: (import 'pkg/envoy.extensions.filters.udp.udp_proxy.v3/udp-proxy-config.libsonnet').definition,
            },
          },
        },
      },
      formatter: {
        metadata: {
          v3: {
            Metadata: (import 'pkg/envoy.extensions.formatter.metadata.v3/metadata.libsonnet').definition,
          },
        },
        req_without_query: {
          v3: {
            ReqWithoutQuery: (import 'pkg/envoy.extensions.formatter.req_without_query.v3/req-without-query.libsonnet').definition,
          },
        },
      },
      health_checkers: {
        redis: {
          v3: {
            Redis: (import 'pkg/envoy.extensions.health_checkers.redis.v3/redis.libsonnet').definition,
          },
        },
        thrift: {
          v3: {
            Thrift: (import 'pkg/envoy.extensions.health_checkers.thrift.v3/thrift.libsonnet').definition,
          },
        },
      },
      http: {
        cache: {
          file_system_http_cache: {
            v3: {
              FileSystemHttpCacheConfig: (import 'pkg/envoy.extensions.http.cache.file_system_http_cache.v3/file-system-http-cache-config.libsonnet').definition,
            },
          },
          simple_http_cache: {
            v3: {
              SimpleHttpCacheConfig: (import 'pkg/envoy.extensions.http.cache.simple_http_cache.v3/simple-http-cache-config.libsonnet').definition,
            },
          },
        },
        custom_response: {
          local_response_policy: {
            v3: {
              LocalResponsePolicy: (import 'pkg/envoy.extensions.http.custom_response.local_response_policy.v3/local-response-policy.libsonnet').definition,
            },
          },
          redirect_policy: {
            v3: {
              RedirectPolicy: (import 'pkg/envoy.extensions.http.custom_response.redirect_policy.v3/redirect-policy.libsonnet').definition,
            },
          },
        },
        early_header_mutation: {
          header_mutation: {
            v3: {
              HeaderMutation: (import 'pkg/envoy.extensions.http.early_header_mutation.header_mutation.v3/header-mutation.libsonnet').definition,
            },
          },
        },
        header_formatters: {
          preserve_case: {
            v3: {
              PreserveCaseFormatterConfig: (import 'pkg/envoy.extensions.http.header_formatters.preserve_case.v3/preserve-case-formatter-config.libsonnet').definition,
            },
          },
        },
        header_validators: {
          envoy_default: {
            v3: {
              HeaderValidatorConfig: (import 'pkg/envoy.extensions.http.header_validators.envoy_default.v3/header-validator-config.libsonnet').definition,
            },
          },
        },
        original_ip_detection: {
          custom_header: {
            v3: {
              CustomHeaderConfig: (import 'pkg/envoy.extensions.http.original_ip_detection.custom_header.v3/custom-header-config.libsonnet').definition,
            },
          },
          xff: {
            v3: {
              XffConfig: (import 'pkg/envoy.extensions.http.original_ip_detection.xff.v3/xff-config.libsonnet').definition,
            },
          },
        },
        stateful_session: {
          cookie: {
            v3: {
              CookieBasedSessionState: (import 'pkg/envoy.extensions.http.stateful_session.cookie.v3/cookie-based-session-state.libsonnet').definition,
            },
          },
          header: {
            v3: {
              HeaderBasedSessionState: (import 'pkg/envoy.extensions.http.stateful_session.header.v3/header-based-session-state.libsonnet').definition,
            },
          },
        },
      },
      internal_redirect: {
        allow_listed_routes: {
          v3: {
            AllowListedRoutesConfig: (import 'pkg/envoy.extensions.internal_redirect.allow_listed_routes.v3/allow-listed-routes-config.libsonnet').definition,
          },
        },
        previous_routes: {
          v3: {
            PreviousRoutesConfig: (import 'pkg/envoy.extensions.internal_redirect.previous_routes.v3/previous-routes-config.libsonnet').definition,
          },
        },
        safe_cross_scheme: {
          v3: {
            SafeCrossSchemeConfig: (import 'pkg/envoy.extensions.internal_redirect.safe_cross_scheme.v3/safe-cross-scheme-config.libsonnet').definition,
          },
        },
      },
      key_value: {
        file_based: {
          v3: {
            FileBasedKeyValueStoreConfig: (import 'pkg/envoy.extensions.key_value.file_based.v3/file-based-key-value-store-config.libsonnet').definition,
          },
        },
      },
      load_balancing_policies: {
        client_side_weighted_round_robin: {
          v3: {
            ClientSideWeightedRoundRobin: (import 'pkg/envoy.extensions.load_balancing_policies.client_side_weighted_round_robin.v3/client-side-weighted-round-robin.libsonnet').definition,
          },
        },
        common: {
          v3: {
            ConsistentHashingLbConfig: (import 'pkg/envoy.extensions.load_balancing_policies.common.v3/consistent-hashing-lb-config.libsonnet').definition,
            LocalityLbConfig: (import 'pkg/envoy.extensions.load_balancing_policies.common.v3/locality-lb-config.libsonnet').definition,
            SlowStartConfig: (import 'pkg/envoy.extensions.load_balancing_policies.common.v3/slow-start-config.libsonnet').definition,
          },
        },
        least_request: {
          v3: {
            LeastRequest: (import 'pkg/envoy.extensions.load_balancing_policies.least_request.v3/least-request.libsonnet').definition,
          },
        },
        maglev: {
          v3: {
            Maglev: (import 'pkg/envoy.extensions.load_balancing_policies.maglev.v3/maglev.libsonnet').definition,
          },
        },
        random: {
          v3: {
            Random: (import 'pkg/envoy.extensions.load_balancing_policies.random.v3/random.libsonnet').definition,
          },
        },
        ring_hash: {
          v3: {
            RingHash: (import 'pkg/envoy.extensions.load_balancing_policies.ring_hash.v3/ring-hash.libsonnet').definition,
          },
        },
        round_robin: {
          v3: {
            RoundRobin: (import 'pkg/envoy.extensions.load_balancing_policies.round_robin.v3/round-robin.libsonnet').definition,
          },
        },
        wrr_locality: {
          v3: {
            WrrLocality: (import 'pkg/envoy.extensions.load_balancing_policies.wrr_locality.v3/wrr-locality.libsonnet').definition,
          },
        },
      },
      matching: {
        common_inputs: {
          environment_variable: {
            v3: {
              Config: (import 'pkg/envoy.extensions.matching.common_inputs.environment_variable.v3/config.libsonnet').definition,
            },
          },
          network: {
            v3: {
              ApplicationProtocolInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/application-protocol-input.libsonnet').definition,
              DestinationIPInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/destination-ip-input.libsonnet').definition,
              DestinationPortInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/destination-port-input.libsonnet').definition,
              DirectSourceIPInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/direct-source-ip-input.libsonnet').definition,
              ServerNameInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/server-name-input.libsonnet').definition,
              SourceIPInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/source-ip-input.libsonnet').definition,
              SourcePortInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/source-port-input.libsonnet').definition,
              SourceTypeInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/source-type-input.libsonnet').definition,
              TransportProtocolInput: (import 'pkg/envoy.extensions.matching.common_inputs.network.v3/transport-protocol-input.libsonnet').definition,
            },
          },
          ssl: {
            v3: {
              DnsSanInput: (import 'pkg/envoy.extensions.matching.common_inputs.ssl.v3/dns-san-input.libsonnet').definition,
              SubjectInput: (import 'pkg/envoy.extensions.matching.common_inputs.ssl.v3/subject-input.libsonnet').definition,
              UriSanInput: (import 'pkg/envoy.extensions.matching.common_inputs.ssl.v3/uri-san-input.libsonnet').definition,
            },
          },
        },
        input_matchers: {
          consistent_hashing: {
            v3: {
              ConsistentHashing: (import 'pkg/envoy.extensions.matching.input_matchers.consistent_hashing.v3/consistent-hashing.libsonnet').definition,
            },
          },
          ip: {
            v3: {
              Ip: (import 'pkg/envoy.extensions.matching.input_matchers.ip.v3/ip.libsonnet').definition,
            },
          },
        },
      },
      network: {
        dns_resolver: {
          apple: {
            v3: {
              AppleDnsResolverConfig: (import 'pkg/envoy.extensions.network.dns_resolver.apple.v3/apple-dns-resolver-config.libsonnet').definition,
            },
          },
          cares: {
            v3: {
              CaresDnsResolverConfig: (import 'pkg/envoy.extensions.network.dns_resolver.cares.v3/cares-dns-resolver-config.libsonnet').definition,
            },
          },
          getaddrinfo: {
            v3: {
              GetAddrInfoDnsResolverConfig: (import 'pkg/envoy.extensions.network.dns_resolver.getaddrinfo.v3/get-addr-info-dns-resolver-config.libsonnet').definition,
            },
          },
        },
        socket_interface: {
          v3: {
            DefaultSocketInterface: (import 'pkg/envoy.extensions.network.socket_interface.v3/default-socket-interface.libsonnet').definition,
          },
        },
      },
      path: {
        match: {
          uri_template: {
            v3: {
              UriTemplateMatchConfig: (import 'pkg/envoy.extensions.path.match.uri_template.v3/uri-template-match-config.libsonnet').definition,
            },
          },
        },
        rewrite: {
          uri_template: {
            v3: {
              UriTemplateRewriteConfig: (import 'pkg/envoy.extensions.path.rewrite.uri_template.v3/uri-template-rewrite-config.libsonnet').definition,
            },
          },
        },
      },
      quic: {
        connection_id_generator: {
          v3: {
            DeterministicConnectionIdGeneratorConfig: (import 'pkg/envoy.extensions.quic.connection_id_generator.v3/deterministic-connection-id-generator-config.libsonnet').definition,
          },
        },
        crypto_stream: {
          v3: {
            CryptoServerStreamConfig: (import 'pkg/envoy.extensions.quic.crypto_stream.v3/crypto-server-stream-config.libsonnet').definition,
          },
        },
        proof_source: {
          v3: {
            ProofSourceConfig: (import 'pkg/envoy.extensions.quic.proof_source.v3/proof-source-config.libsonnet').definition,
          },
        },
      },
      rate_limit_descriptors: {
        expr: {
          v3: {
            Descriptor: (import 'pkg/envoy.extensions.rate_limit_descriptors.expr.v3/descriptor.libsonnet').definition,
          },
        },
      },
      rbac: {
        matchers: {
          upstream_ip_port: {
            v3: {
              UpstreamIpPortMatcher: (import 'pkg/envoy.extensions.rbac.matchers.upstream_ip_port.v3/upstream-ip-port-matcher.libsonnet').definition,
            },
          },
        },
      },
      regex_engines: {
        v3: {
          GoogleRE2: (import 'pkg/envoy.extensions.regex_engines.v3/google-re-2.libsonnet').definition,
        },
      },
      request_id: {
        uuid: {
          v3: {
            UuidRequestIdConfig: (import 'pkg/envoy.extensions.request_id.uuid.v3/uuid-request-id-config.libsonnet').definition,
          },
        },
      },
      resource_monitors: {
        downstream_connections: {
          v3: {
            DownstreamConnectionsConfig: (import 'pkg/envoy.extensions.resource_monitors.downstream_connections.v3/downstream-connections-config.libsonnet').definition,
          },
        },
        fixed_heap: {
          v3: {
            FixedHeapConfig: (import 'pkg/envoy.extensions.resource_monitors.fixed_heap.v3/fixed-heap-config.libsonnet').definition,
          },
        },
        injected_resource: {
          v3: {
            InjectedResourceConfig: (import 'pkg/envoy.extensions.resource_monitors.injected_resource.v3/injected-resource-config.libsonnet').definition,
          },
        },
      },
      retry: {
        host: {
          omit_canary_hosts: {
            v3: {
              OmitCanaryHostsPredicate: (import 'pkg/envoy.extensions.retry.host.omit_canary_hosts.v3/omit-canary-hosts-predicate.libsonnet').definition,
            },
          },
          omit_host_metadata: {
            v3: {
              OmitHostMetadataConfig: (import 'pkg/envoy.extensions.retry.host.omit_host_metadata.v3/omit-host-metadata-config.libsonnet').definition,
            },
          },
          previous_hosts: {
            v3: {
              PreviousHostsPredicate: (import 'pkg/envoy.extensions.retry.host.previous_hosts.v3/previous-hosts-predicate.libsonnet').definition,
            },
          },
        },
        priority: {
          previous_priorities: {
            v3: {
              PreviousPrioritiesConfig: (import 'pkg/envoy.extensions.retry.priority.previous_priorities.v3/previous-priorities-config.libsonnet').definition,
            },
          },
        },
      },
      stat_sinks: {
        graphite_statsd: {
          v3: {
            GraphiteStatsdSink: (import 'pkg/envoy.extensions.stat_sinks.graphite_statsd.v3/graphite-statsd-sink.libsonnet').definition,
          },
        },
        wasm: {
          v3: {
            Wasm: (import 'pkg/envoy.extensions.stat_sinks.wasm.v3/wasm.libsonnet').definition,
          },
        },
      },
      transport_sockets: {
        alts: {
          v3: {
            Alts: (import 'pkg/envoy.extensions.transport_sockets.alts.v3/alts.libsonnet').definition,
          },
        },
        http_11_proxy: {
          v3: {
            Http11ProxyUpstreamTransport: (import 'pkg/envoy.extensions.transport_sockets.http_11_proxy.v3/http-11-proxy-upstream-transport.libsonnet').definition,
          },
        },
        internal_upstream: {
          v3: {
            InternalUpstreamTransport: (import 'pkg/envoy.extensions.transport_sockets.internal_upstream.v3/internal-upstream-transport.libsonnet').definition,
          },
        },
        proxy_protocol: {
          v3: {
            ProxyProtocolUpstreamTransport: (import 'pkg/envoy.extensions.transport_sockets.proxy_protocol.v3/proxy-protocol-upstream-transport.libsonnet').definition,
          },
        },
        quic: {
          v3: {
            QuicDownstreamTransport: (import 'pkg/envoy.extensions.transport_sockets.quic.v3/quic-downstream-transport.libsonnet').definition,
            QuicUpstreamTransport: (import 'pkg/envoy.extensions.transport_sockets.quic.v3/quic-upstream-transport.libsonnet').definition,
          },
        },
        raw_buffer: {
          v3: {
            RawBuffer: (import 'pkg/envoy.extensions.transport_sockets.raw_buffer.v3/raw-buffer.libsonnet').definition,
          },
        },
        s2a: {
          v3: {
            S2AConfiguration: (import 'pkg/envoy.extensions.transport_sockets.s2a.v3/s-2-a-configuration.libsonnet').definition,
          },
        },
        starttls: {
          v3: {
            StartTlsConfig: (import 'pkg/envoy.extensions.transport_sockets.starttls.v3/start-tls-config.libsonnet').definition,
            UpstreamStartTlsConfig: (import 'pkg/envoy.extensions.transport_sockets.starttls.v3/upstream-start-tls-config.libsonnet').definition,
          },
        },
        tap: {
          v3: {
            Tap: (import 'pkg/envoy.extensions.transport_sockets.tap.v3/tap.libsonnet').definition,
          },
        },
        tcp_stats: {
          v3: {
            Config: (import 'pkg/envoy.extensions.transport_sockets.tcp_stats.v3/config.libsonnet').definition,
          },
        },
        tls: {
          v3: {
            CertificateProviderPluginInstance: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/certificate-provider-plugin-instance.libsonnet').definition,
            CertificateValidationContext: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/certificate-validation-context.libsonnet').definition,
            CommonTlsContext: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/common-tls-context.libsonnet').definition,
            DownstreamTlsContext: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/downstream-tls-context.libsonnet').definition,
            GenericSecret: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/generic-secret.libsonnet').definition,
            PrivateKeyProvider: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/private-key-provider.libsonnet').definition,
            SPIFFECertValidatorConfig: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/spiffe-cert-validator-config.libsonnet').definition,
            SdsSecretConfig: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/sds-secret-config.libsonnet').definition,
            Secret: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/secret.libsonnet').definition,
            SubjectAltNameMatcher: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/subject-alt-name-matcher.libsonnet').definition,
            TlsCertificate: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/tls-certificate.libsonnet').definition,
            TlsKeyLog: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/tls-key-log.libsonnet').definition,
            TlsParameters: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/tls-parameters.libsonnet').definition,
            TlsSessionTicketKeys: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/tls-session-ticket-keys.libsonnet').definition,
            UpstreamTlsContext: (import 'pkg/envoy.extensions.transport_sockets.tls.v3/upstream-tls-context.libsonnet').definition,
          },
        },
      },
      udp_packet_writer: {
        v3: {
          UdpDefaultWriterFactory: (import 'pkg/envoy.extensions.udp_packet_writer.v3/udp-default-writer-factory.libsonnet').definition,
          UdpGsoBatchWriterFactory: (import 'pkg/envoy.extensions.udp_packet_writer.v3/udp-gso-batch-writer-factory.libsonnet').definition,
        },
      },
      upstreams: {
        http: {
          generic: {
            v3: {
              GenericConnectionPoolProto: (import 'pkg/envoy.extensions.upstreams.http.generic.v3/generic-connection-pool-proto.libsonnet').definition,
            },
          },
          http: {
            v3: {
              HttpConnectionPoolProto: (import 'pkg/envoy.extensions.upstreams.http.http.v3/http-connection-pool-proto.libsonnet').definition,
            },
          },
          tcp: {
            v3: {
              TcpConnectionPoolProto: (import 'pkg/envoy.extensions.upstreams.http.tcp.v3/tcp-connection-pool-proto.libsonnet').definition,
            },
          },
          v3: {
            HttpProtocolOptions: (import 'pkg/envoy.extensions.upstreams.http.v3/http-protocol-options.libsonnet').definition,
          },
        },
        tcp: {
          generic: {
            v3: {
              GenericConnectionPoolProto: (import 'pkg/envoy.extensions.upstreams.tcp.generic.v3/generic-connection-pool-proto.libsonnet').definition,
            },
          },
          v3: {
            TcpProtocolOptions: (import 'pkg/envoy.extensions.upstreams.tcp.v3/tcp-protocol-options.libsonnet').definition,
          },
        },
      },
      wasm: {
        v3: {
          CapabilityRestrictionConfig: (import 'pkg/envoy.extensions.wasm.v3/capability-restriction-config.libsonnet').definition,
          EnvironmentVariables: (import 'pkg/envoy.extensions.wasm.v3/environment-variables.libsonnet').definition,
          PluginConfig: (import 'pkg/envoy.extensions.wasm.v3/plugin-config.libsonnet').definition,
          SanitizationConfig: (import 'pkg/envoy.extensions.wasm.v3/sanitization-config.libsonnet').definition,
          VmConfig: (import 'pkg/envoy.extensions.wasm.v3/vm-config.libsonnet').definition,
          WasmService: (import 'pkg/envoy.extensions.wasm.v3/wasm-service.libsonnet').definition,
        },
      },
      watchdog: {
        profile_action: {
          v3: {
            ProfileActionConfig: (import 'pkg/envoy.extensions.watchdog.profile_action.v3/profile-action-config.libsonnet').definition,
          },
        },
      },
    },
    type: {
      http: {
        v3: {
          Cookie: (import 'pkg/envoy.type.http.v3/cookie.libsonnet').definition,
          PathTransformation: (import 'pkg/envoy.type.http.v3/path-transformation.libsonnet').definition,
        },
      },
      matcher: {
        v3: {
          DoubleMatcher: (import 'pkg/envoy.type.matcher.v3/double-matcher.libsonnet').definition,
          FilterStateMatcher: (import 'pkg/envoy.type.matcher.v3/filter-state-matcher.libsonnet').definition,
          ListMatcher: (import 'pkg/envoy.type.matcher.v3/list-matcher.libsonnet').definition,
          ListStringMatcher: (import 'pkg/envoy.type.matcher.v3/list-string-matcher.libsonnet').definition,
          MetadataMatcher: (import 'pkg/envoy.type.matcher.v3/metadata-matcher.libsonnet').definition,
          PathMatcher: (import 'pkg/envoy.type.matcher.v3/path-matcher.libsonnet').definition,
          RegexMatchAndSubstitute: (import 'pkg/envoy.type.matcher.v3/regex-match-and-substitute.libsonnet').definition,
          RegexMatcher: (import 'pkg/envoy.type.matcher.v3/regex-matcher.libsonnet').definition,
          StringMatcher: (import 'pkg/envoy.type.matcher.v3/string-matcher.libsonnet').definition,
          ValueMatcher: (import 'pkg/envoy.type.matcher.v3/value-matcher.libsonnet').definition,
        },
      },
      metadata: {
        v3: {
          MetadataKey: (import 'pkg/envoy.type.metadata.v3/metadata-key.libsonnet').definition,
          MetadataKind: (import 'pkg/envoy.type.metadata.v3/metadata-kind.libsonnet').definition,
        },
      },
      tracing: {
        v3: {
          CustomTag: (import 'pkg/envoy.type.tracing.v3/custom-tag.libsonnet').definition,
        },
      },
      v3: {
        CodecClientType: (import 'pkg/envoy.type.v3/codec-client-type.libsonnet').definition,
        DoubleRange: (import 'pkg/envoy.type.v3/double-range.libsonnet').definition,
        FractionalPercent: (import 'pkg/envoy.type.v3/fractional-percent.libsonnet').definition,
        HashPolicy: (import 'pkg/envoy.type.v3/hash-policy.libsonnet').definition,
        HttpStatus: (import 'pkg/envoy.type.v3/http-status.libsonnet').definition,
        Int32Range: (import 'pkg/envoy.type.v3/int-32-range.libsonnet').definition,
        Int64Range: (import 'pkg/envoy.type.v3/int-64-range.libsonnet').definition,
        Percent: (import 'pkg/envoy.type.v3/percent.libsonnet').definition,
        RateLimitStrategy: (import 'pkg/envoy.type.v3/rate-limit-strategy.libsonnet').definition,
        RateLimitUnit: (import 'pkg/envoy.type.v3/rate-limit-unit.libsonnet').definition,
        SemanticVersion: (import 'pkg/envoy.type.v3/semantic-version.libsonnet').definition,
        StatusCode: (import 'pkg/envoy.type.v3/status-code.libsonnet').definition,
        TokenBucket: (import 'pkg/envoy.type.v3/token-bucket.libsonnet').definition,
      },
    },
  },
  google: {
    api: {
      expr: {
        v1alpha1: {
          CheckedExpr: (import 'pkg/google.api.expr.v1alpha1/checked-expr.libsonnet').definition,
          Constant: (import 'pkg/google.api.expr.v1alpha1/constant.libsonnet').definition,
          Decl: (import 'pkg/google.api.expr.v1alpha1/decl.libsonnet').definition,
          Expr: (import 'pkg/google.api.expr.v1alpha1/expr.libsonnet').definition,
          ParsedExpr: (import 'pkg/google.api.expr.v1alpha1/parsed-expr.libsonnet').definition,
          Reference: (import 'pkg/google.api.expr.v1alpha1/reference.libsonnet').definition,
          SourceInfo: (import 'pkg/google.api.expr.v1alpha1/source-info.libsonnet').definition,
          SourcePosition: (import 'pkg/google.api.expr.v1alpha1/source-position.libsonnet').definition,
          Type: (import 'pkg/google.api.expr.v1alpha1/type.libsonnet').definition,
        },
      },
    },
    protobuf: {
      Any: (import 'pkg/google.protobuf/any.libsonnet').definition,
      BoolValue: (import 'pkg/google.protobuf/bool-value.libsonnet').definition,
      BytesValue: (import 'pkg/google.protobuf/bytes-value.libsonnet').definition,
      DescriptorProto: (import 'pkg/google.protobuf/descriptor-proto.libsonnet').definition,
      DoubleValue: (import 'pkg/google.protobuf/double-value.libsonnet').definition,
      Duration: (import 'pkg/google.protobuf/duration.libsonnet').definition,
      Empty: (import 'pkg/google.protobuf/empty.libsonnet').definition,
      EnumDescriptorProto: (import 'pkg/google.protobuf/enum-descriptor-proto.libsonnet').definition,
      EnumOptions: (import 'pkg/google.protobuf/enum-options.libsonnet').definition,
      EnumValueDescriptorProto: (import 'pkg/google.protobuf/enum-value-descriptor-proto.libsonnet').definition,
      EnumValueOptions: (import 'pkg/google.protobuf/enum-value-options.libsonnet').definition,
      ExtensionRangeOptions: (import 'pkg/google.protobuf/extension-range-options.libsonnet').definition,
      FieldDescriptorProto: (import 'pkg/google.protobuf/field-descriptor-proto.libsonnet').definition,
      FieldOptions: (import 'pkg/google.protobuf/field-options.libsonnet').definition,
      FileDescriptorProto: (import 'pkg/google.protobuf/file-descriptor-proto.libsonnet').definition,
      FileDescriptorSet: (import 'pkg/google.protobuf/file-descriptor-set.libsonnet').definition,
      FileOptions: (import 'pkg/google.protobuf/file-options.libsonnet').definition,
      FloatValue: (import 'pkg/google.protobuf/float-value.libsonnet').definition,
      GeneratedCodeInfo: (import 'pkg/google.protobuf/generated-code-info.libsonnet').definition,
      Int32Value: (import 'pkg/google.protobuf/int-32-value.libsonnet').definition,
      Int64Value: (import 'pkg/google.protobuf/int-64-value.libsonnet').definition,
      ListValue: (import 'pkg/google.protobuf/list-value.libsonnet').definition,
      MessageOptions: (import 'pkg/google.protobuf/message-options.libsonnet').definition,
      MethodDescriptorProto: (import 'pkg/google.protobuf/method-descriptor-proto.libsonnet').definition,
      MethodOptions: (import 'pkg/google.protobuf/method-options.libsonnet').definition,
      NullValue: (import 'pkg/google.protobuf/null-value.libsonnet').definition,
      OneofDescriptorProto: (import 'pkg/google.protobuf/oneof-descriptor-proto.libsonnet').definition,
      OneofOptions: (import 'pkg/google.protobuf/oneof-options.libsonnet').definition,
      ServiceDescriptorProto: (import 'pkg/google.protobuf/service-descriptor-proto.libsonnet').definition,
      ServiceOptions: (import 'pkg/google.protobuf/service-options.libsonnet').definition,
      SourceCodeInfo: (import 'pkg/google.protobuf/source-code-info.libsonnet').definition,
      StringValue: (import 'pkg/google.protobuf/string-value.libsonnet').definition,
      Struct: (import 'pkg/google.protobuf/struct.libsonnet').definition,
      Timestamp: (import 'pkg/google.protobuf/timestamp.libsonnet').definition,
      UInt32Value: (import 'pkg/google.protobuf/u-int-32-value.libsonnet').definition,
      UInt64Value: (import 'pkg/google.protobuf/u-int-64-value.libsonnet').definition,
      UninterpretedOption: (import 'pkg/google.protobuf/uninterpreted-option.libsonnet').definition,
      Value: (import 'pkg/google.protobuf/value.libsonnet').definition,
    },
    rpc: {
      Status: (import 'pkg/google.rpc/status.libsonnet').definition,
    },
  },
  opentelemetry: {
    proto: {
      common: {
        v1: {
          AnyValue: (import 'pkg/opentelemetry.proto.common.v1/any-value.libsonnet').definition,
          ArrayValue: (import 'pkg/opentelemetry.proto.common.v1/array-value.libsonnet').definition,
          InstrumentationScope: (import 'pkg/opentelemetry.proto.common.v1/instrumentation-scope.libsonnet').definition,
          KeyValue: (import 'pkg/opentelemetry.proto.common.v1/key-value.libsonnet').definition,
          KeyValueList: (import 'pkg/opentelemetry.proto.common.v1/key-value-list.libsonnet').definition,
        },
      },
    },
  },
  udpa: {
    annotations: {
      FieldMigrateAnnotation: (import 'pkg/udpa.annotations/field-migrate-annotation.libsonnet').definition,
      FieldSecurityAnnotation: (import 'pkg/udpa.annotations/field-security-annotation.libsonnet').definition,
      FileMigrateAnnotation: (import 'pkg/udpa.annotations/file-migrate-annotation.libsonnet').definition,
      MigrateAnnotation: (import 'pkg/udpa.annotations/migrate-annotation.libsonnet').definition,
      PackageVersionStatus: (import 'pkg/udpa.annotations/package-version-status.libsonnet').definition,
      StatusAnnotation: (import 'pkg/udpa.annotations/status-annotation.libsonnet').definition,
      VersioningAnnotation: (import 'pkg/udpa.annotations/versioning-annotation.libsonnet').definition,
    },
  },
  validate: {
    AnyRules: (import 'pkg/validate/any-rules.libsonnet').definition,
    BoolRules: (import 'pkg/validate/bool-rules.libsonnet').definition,
    BytesRules: (import 'pkg/validate/bytes-rules.libsonnet').definition,
    DoubleRules: (import 'pkg/validate/double-rules.libsonnet').definition,
    DurationRules: (import 'pkg/validate/duration-rules.libsonnet').definition,
    EnumRules: (import 'pkg/validate/enum-rules.libsonnet').definition,
    FieldRules: (import 'pkg/validate/field-rules.libsonnet').definition,
    Fixed32Rules: (import 'pkg/validate/fixed-32-rules.libsonnet').definition,
    Fixed64Rules: (import 'pkg/validate/fixed-64-rules.libsonnet').definition,
    FloatRules: (import 'pkg/validate/float-rules.libsonnet').definition,
    Int32Rules: (import 'pkg/validate/int-32-rules.libsonnet').definition,
    Int64Rules: (import 'pkg/validate/int-64-rules.libsonnet').definition,
    KnownRegex: (import 'pkg/validate/known-regex.libsonnet').definition,
    MapRules: (import 'pkg/validate/map-rules.libsonnet').definition,
    MessageRules: (import 'pkg/validate/message-rules.libsonnet').definition,
    RepeatedRules: (import 'pkg/validate/repeated-rules.libsonnet').definition,
    SFixed32Rules: (import 'pkg/validate/s-fixed-32-rules.libsonnet').definition,
    SFixed64Rules: (import 'pkg/validate/s-fixed-64-rules.libsonnet').definition,
    SInt32Rules: (import 'pkg/validate/s-int-32-rules.libsonnet').definition,
    SInt64Rules: (import 'pkg/validate/s-int-64-rules.libsonnet').definition,
    StringRules: (import 'pkg/validate/string-rules.libsonnet').definition,
    TimestampRules: (import 'pkg/validate/timestamp-rules.libsonnet').definition,
    UInt32Rules: (import 'pkg/validate/u-int-32-rules.libsonnet').definition,
    UInt64Rules: (import 'pkg/validate/u-int-64-rules.libsonnet').definition,
  },
  xds: {
    annotations: {
      v3: {
        FieldStatusAnnotation: (import 'pkg/xds.annotations.v3/field-status-annotation.libsonnet').definition,
        FileStatusAnnotation: (import 'pkg/xds.annotations.v3/file-status-annotation.libsonnet').definition,
        MessageStatusAnnotation: (import 'pkg/xds.annotations.v3/message-status-annotation.libsonnet').definition,
        PackageVersionStatus: (import 'pkg/xds.annotations.v3/package-version-status.libsonnet').definition,
        StatusAnnotation: (import 'pkg/xds.annotations.v3/status-annotation.libsonnet').definition,
      },
    },
    core: {
      v3: {
        Authority: (import 'pkg/xds.core.v3/authority.libsonnet').definition,
        CollectionEntry: (import 'pkg/xds.core.v3/collection-entry.libsonnet').definition,
        ContextParams: (import 'pkg/xds.core.v3/context-params.libsonnet').definition,
        ResourceLocator: (import 'pkg/xds.core.v3/resource-locator.libsonnet').definition,
        TypedExtensionConfig: (import 'pkg/xds.core.v3/typed-extension-config.libsonnet').definition,
      },
    },
    type: {
      matcher: {
        v3: {
          ListStringMatcher: (import 'pkg/xds.type.matcher.v3/list-string-matcher.libsonnet').definition,
          Matcher: (import 'pkg/xds.type.matcher.v3/matcher.libsonnet').definition,
          RegexMatcher: (import 'pkg/xds.type.matcher.v3/regex-matcher.libsonnet').definition,
          StringMatcher: (import 'pkg/xds.type.matcher.v3/string-matcher.libsonnet').definition,
        },
      },
    },
  },
}
