// Message type: envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager';
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
  add_user_agent: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'add_user_agent',
      'addUserAgent',
    ],
  },
  always_set_request_id_in_response: {
    type: 'bool',
    allowedNames: [
      'always_set_request_id_in_response',
      'alwaysSetRequestIdInResponse',
    ],
  },
  append_x_forwarded_port: {
    type: 'bool',
    allowedNames: [
      'append_x_forwarded_port',
      'appendXForwardedPort',
    ],
  },
  codec_type: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.CodecType',
    allowedNames: [
      'codec_type',
      'codecType',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  common_http_protocol_options: {
    type: 'envoy.config.core.v3.HttpProtocolOptions',
    allowedNames: [
      'common_http_protocol_options',
      'commonHttpProtocolOptions',
    ],
  },
  delayed_close_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'delayed_close_timeout',
      'delayedCloseTimeout',
    ],
  },
  drain_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'drain_timeout',
      'drainTimeout',
    ],
  },
  early_header_mutation_extensions: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'early_header_mutation_extensions',
      'earlyHeaderMutationExtensions',
    ],
    containerType: 'list',
  },
  forward_client_cert_details: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ForwardClientCertDetails',
    allowedNames: [
      'forward_client_cert_details',
      'forwardClientCertDetails',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  generate_request_id: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'generate_request_id',
      'generateRequestId',
    ],
  },
  http2_protocol_options: {
    type: 'envoy.config.core.v3.Http2ProtocolOptions',
    allowedNames: [
      'http2_protocol_options',
      'http2ProtocolOptions',
    ],
  },
  http3_protocol_options: {
    type: 'envoy.config.core.v3.Http3ProtocolOptions',
    allowedNames: [
      'http3_protocol_options',
      'http3ProtocolOptions',
    ],
  },
  http_filters: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter',
    allowedNames: [
      'http_filters',
      'httpFilters',
    ],
    containerType: 'list',
  },
  http_protocol_options: {
    type: 'envoy.config.core.v3.Http1ProtocolOptions',
    allowedNames: [
      'http_protocol_options',
      'httpProtocolOptions',
    ],
  },
  internal_address_config: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig',
    allowedNames: [
      'internal_address_config',
      'internalAddressConfig',
    ],
  },
  local_reply_config: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig',
    allowedNames: [
      'local_reply_config',
      'localReplyConfig',
    ],
  },
  max_request_headers_kb: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_request_headers_kb',
      'maxRequestHeadersKb',
    ],
    constraints: {
      Uint32: {
        gt: 0,
        lte: 8192,
      },
    },
  },
  merge_slashes: {
    type: 'bool',
    allowedNames: [
      'merge_slashes',
      'mergeSlashes',
    ],
  },
  normalize_path: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'normalize_path',
      'normalizePath',
    ],
  },
  original_ip_detection_extensions: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'original_ip_detection_extensions',
      'originalIpDetectionExtensions',
    ],
    containerType: 'list',
  },
  path_normalization_options: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions',
    allowedNames: [
      'path_normalization_options',
      'pathNormalizationOptions',
    ],
  },
  path_with_escaped_slashes_action: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathWithEscapedSlashesAction',
    allowedNames: [
      'path_with_escaped_slashes_action',
      'pathWithEscapedSlashesAction',
    ],
  },
  preserve_external_request_id: {
    type: 'bool',
    allowedNames: [
      'preserve_external_request_id',
      'preserveExternalRequestId',
    ],
  },
  proxy_100_continue: {
    type: 'bool',
    allowedNames: [
      'proxy_100_continue',
      'proxy100Continue',
    ],
  },
  proxy_status_config: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ProxyStatusConfig',
    allowedNames: [
      'proxy_status_config',
      'proxyStatusConfig',
    ],
  },
  rds: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.Rds',
    allowedNames: [
      'rds',
    ],
  },
  represent_ipv4_remote_address_as_ipv4_mapped_ipv6: {
    type: 'bool',
    allowedNames: [
      'represent_ipv4_remote_address_as_ipv4_mapped_ipv6',
      'representIpv4RemoteAddressAsIpv4MappedIpv6',
    ],
  },
  request_headers_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'request_headers_timeout',
      'requestHeadersTimeout',
    ],
    constraints: {
      Duration: {
        gte: {},
      },
    },
  },
  request_id_extension: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.RequestIDExtension',
    allowedNames: [
      'request_id_extension',
      'requestIdExtension',
    ],
  },
  request_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'request_timeout',
      'requestTimeout',
    ],
  },
  route_config: {
    type: 'envoy.config.route.v3.RouteConfiguration',
    allowedNames: [
      'route_config',
      'routeConfig',
    ],
  },
  scheme_header_transformation: {
    type: 'envoy.config.core.v3.SchemeHeaderTransformation',
    allowedNames: [
      'scheme_header_transformation',
      'schemeHeaderTransformation',
    ],
  },
  scoped_routes: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes',
    allowedNames: [
      'scoped_routes',
      'scopedRoutes',
    ],
  },
  server_header_transformation: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ServerHeaderTransformation',
    allowedNames: [
      'server_header_transformation',
      'serverHeaderTransformation',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  server_name: {
    type: 'string',
    allowedNames: [
      'server_name',
      'serverName',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 2,
        },
        strict: false,
      },
    },
  },
  set_current_client_cert_details: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails',
    allowedNames: [
      'set_current_client_cert_details',
      'setCurrentClientCertDetails',
    ],
  },
  skip_xff_append: {
    type: 'bool',
    allowedNames: [
      'skip_xff_append',
      'skipXffAppend',
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
  stream_error_on_invalid_http_message: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'stream_error_on_invalid_http_message',
      'streamErrorOnInvalidHttpMessage',
    ],
  },
  stream_idle_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'stream_idle_timeout',
      'streamIdleTimeout',
    ],
  },
  strip_any_host_port: {
    type: 'bool',
    allowedNames: [
      'strip_any_host_port',
      'stripAnyHostPort',
    ],
  },
  strip_matching_host_port: {
    type: 'bool',
    allowedNames: [
      'strip_matching_host_port',
      'stripMatchingHostPort',
    ],
  },
  strip_trailing_host_dot: {
    type: 'bool',
    allowedNames: [
      'strip_trailing_host_dot',
      'stripTrailingHostDot',
    ],
  },
  tracing: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing',
    allowedNames: [
      'tracing',
    ],
  },
  typed_header_validation_config: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'typed_header_validation_config',
      'typedHeaderValidationConfig',
    ],
  },
  upgrade_configs: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig',
    allowedNames: [
      'upgrade_configs',
      'upgradeConfigs',
    ],
    containerType: 'list',
  },
  use_remote_address: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'use_remote_address',
      'useRemoteAddress',
    ],
  },
  via: {
    type: 'string',
    allowedNames: [
      'via',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 2,
        },
        strict: false,
      },
    },
  },
  xff_num_trusted_hops: {
    type: 'uint32',
    allowedNames: [
      'xff_num_trusted_hops',
      'xffNumTrustedHops',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'rds',
      'route_config',
      'scoped_routes',
    ],
    required: true,
    group: 'route_specifier',
  },
  {
    fields: [
      'strip_any_host_port',
    ],
    required: false,
    group: 'strip_port_mode',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    CodecType:: (import 'http-connection-manager-codec-type.libsonnet').definition,
    ServerHeaderTransformation:: (import 'http-connection-manager-server-header-transformation.libsonnet').definition,
    ForwardClientCertDetails:: (import 'http-connection-manager-forward-client-cert-details.libsonnet').definition,
    PathWithEscapedSlashesAction:: (import 'http-connection-manager-path-with-escaped-slashes-action.libsonnet').definition,
    Tracing:: (import 'http-connection-manager-tracing.libsonnet').definition,
    InternalAddressConfig:: (import 'http-connection-manager-internal-address-config.libsonnet').definition,
    SetCurrentClientCertDetails:: (import 'http-connection-manager-set-current-client-cert-details.libsonnet').definition,
    UpgradeConfig:: (import 'http-connection-manager-upgrade-config.libsonnet').definition,
    PathNormalizationOptions:: (import 'http-connection-manager-path-normalization-options.libsonnet').definition,
    ProxyStatusConfig:: (import 'http-connection-manager-proxy-status-config.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withAccessLog:: function(val) validator.validateField(self + { access_log: val }, 'access_log', type + '.withAccessLog'),
    withAddUserAgent:: function(val) validator.validateField(self + { add_user_agent: val }, 'add_user_agent', type + '.withAddUserAgent'),
    withAlwaysSetRequestIdInResponse:: function(val) validator.validateField(self + { always_set_request_id_in_response: val }, 'always_set_request_id_in_response', type + '.withAlwaysSetRequestIdInResponse'),
    withAppendXForwardedPort:: function(val) validator.validateField(self + { append_x_forwarded_port: val }, 'append_x_forwarded_port', type + '.withAppendXForwardedPort'),
    withCodecType:: function(val) validator.validateField(self + { codec_type: val }, 'codec_type', type + '.withCodecType'),
    withCommonHttpProtocolOptions:: function(val) validator.validateField(self + { common_http_protocol_options: val }, 'common_http_protocol_options', type + '.withCommonHttpProtocolOptions'),
    withDelayedCloseTimeout:: function(val) validator.validateField(self + { delayed_close_timeout: val }, 'delayed_close_timeout', type + '.withDelayedCloseTimeout'),
    withDrainTimeout:: function(val) validator.validateField(self + { drain_timeout: val }, 'drain_timeout', type + '.withDrainTimeout'),
    withEarlyHeaderMutationExtensions:: function(val) validator.validateField(self + { early_header_mutation_extensions: val }, 'early_header_mutation_extensions', type + '.withEarlyHeaderMutationExtensions'),
    withForwardClientCertDetails:: function(val) validator.validateField(self + { forward_client_cert_details: val }, 'forward_client_cert_details', type + '.withForwardClientCertDetails'),
    withGenerateRequestId:: function(val) validator.validateField(self + { generate_request_id: val }, 'generate_request_id', type + '.withGenerateRequestId'),
    withHttp2ProtocolOptions:: function(val) validator.validateField(self + { http2_protocol_options: val }, 'http2_protocol_options', type + '.withHttp2ProtocolOptions'),
    withHttp3ProtocolOptions:: function(val) validator.validateField(self + { http3_protocol_options: val }, 'http3_protocol_options', type + '.withHttp3ProtocolOptions'),
    withHttpFilters:: function(val) validator.validateField(self + { http_filters: val }, 'http_filters', type + '.withHttpFilters'),
    withHttpProtocolOptions:: function(val) validator.validateField(self + { http_protocol_options: val }, 'http_protocol_options', type + '.withHttpProtocolOptions'),
    withInternalAddressConfig:: function(val) validator.validateField(self + { internal_address_config: val }, 'internal_address_config', type + '.withInternalAddressConfig'),
    withLocalReplyConfig:: function(val) validator.validateField(self + { local_reply_config: val }, 'local_reply_config', type + '.withLocalReplyConfig'),
    withMaxRequestHeadersKb:: function(val) validator.validateField(self + { max_request_headers_kb: val }, 'max_request_headers_kb', type + '.withMaxRequestHeadersKb'),
    withMergeSlashes:: function(val) validator.validateField(self + { merge_slashes: val }, 'merge_slashes', type + '.withMergeSlashes'),
    withNormalizePath:: function(val) validator.validateField(self + { normalize_path: val }, 'normalize_path', type + '.withNormalizePath'),
    withOriginalIpDetectionExtensions:: function(val) validator.validateField(self + { original_ip_detection_extensions: val }, 'original_ip_detection_extensions', type + '.withOriginalIpDetectionExtensions'),
    withPathNormalizationOptions:: function(val) validator.validateField(self + { path_normalization_options: val }, 'path_normalization_options', type + '.withPathNormalizationOptions'),
    withPathWithEscapedSlashesAction:: function(val) validator.validateField(self + { path_with_escaped_slashes_action: val }, 'path_with_escaped_slashes_action', type + '.withPathWithEscapedSlashesAction'),
    withPreserveExternalRequestId:: function(val) validator.validateField(self + { preserve_external_request_id: val }, 'preserve_external_request_id', type + '.withPreserveExternalRequestId'),
    withProxy100Continue:: function(val) validator.validateField(self + { proxy_100_continue: val }, 'proxy_100_continue', type + '.withProxy100Continue'),
    withProxyStatusConfig:: function(val) validator.validateField(self + { proxy_status_config: val }, 'proxy_status_config', type + '.withProxyStatusConfig'),
    withRds:: function(val) validator.validateField(self + { rds: val }, 'rds', type + '.withRds'),
    withRepresentIpv4RemoteAddressAsIpv4MappedIpv6:: function(val) validator.validateField(self + { represent_ipv4_remote_address_as_ipv4_mapped_ipv6: val }, 'represent_ipv4_remote_address_as_ipv4_mapped_ipv6', type + '.withRepresentIpv4RemoteAddressAsIpv4MappedIpv6'),
    withRequestHeadersTimeout:: function(val) validator.validateField(self + { request_headers_timeout: val }, 'request_headers_timeout', type + '.withRequestHeadersTimeout'),
    withRequestIdExtension:: function(val) validator.validateField(self + { request_id_extension: val }, 'request_id_extension', type + '.withRequestIdExtension'),
    withRequestTimeout:: function(val) validator.validateField(self + { request_timeout: val }, 'request_timeout', type + '.withRequestTimeout'),
    withRouteConfig:: function(val) validator.validateField(self + { route_config: val }, 'route_config', type + '.withRouteConfig'),
    withSchemeHeaderTransformation:: function(val) validator.validateField(self + { scheme_header_transformation: val }, 'scheme_header_transformation', type + '.withSchemeHeaderTransformation'),
    withScopedRoutes:: function(val) validator.validateField(self + { scoped_routes: val }, 'scoped_routes', type + '.withScopedRoutes'),
    withServerHeaderTransformation:: function(val) validator.validateField(self + { server_header_transformation: val }, 'server_header_transformation', type + '.withServerHeaderTransformation'),
    withServerName:: function(val) validator.validateField(self + { server_name: val }, 'server_name', type + '.withServerName'),
    withSetCurrentClientCertDetails:: function(val) validator.validateField(self + { set_current_client_cert_details: val }, 'set_current_client_cert_details', type + '.withSetCurrentClientCertDetails'),
    withSkipXffAppend:: function(val) validator.validateField(self + { skip_xff_append: val }, 'skip_xff_append', type + '.withSkipXffAppend'),
    withStatPrefix:: function(val) validator.validateField(self + { stat_prefix: val }, 'stat_prefix', type + '.withStatPrefix'),
    withStreamErrorOnInvalidHttpMessage:: function(val) validator.validateField(self + { stream_error_on_invalid_http_message: val }, 'stream_error_on_invalid_http_message', type + '.withStreamErrorOnInvalidHttpMessage'),
    withStreamIdleTimeout:: function(val) validator.validateField(self + { stream_idle_timeout: val }, 'stream_idle_timeout', type + '.withStreamIdleTimeout'),
    withStripAnyHostPort:: function(val) validator.validateField(self + { strip_any_host_port: val }, 'strip_any_host_port', type + '.withStripAnyHostPort'),
    withStripMatchingHostPort:: function(val) validator.validateField(self + { strip_matching_host_port: val }, 'strip_matching_host_port', type + '.withStripMatchingHostPort'),
    withStripTrailingHostDot:: function(val) validator.validateField(self + { strip_trailing_host_dot: val }, 'strip_trailing_host_dot', type + '.withStripTrailingHostDot'),
    withTracing:: function(val) validator.validateField(self + { tracing: val }, 'tracing', type + '.withTracing'),
    withTypedHeaderValidationConfig:: function(val) validator.validateField(self + { typed_header_validation_config: val }, 'typed_header_validation_config', type + '.withTypedHeaderValidationConfig'),
    withUpgradeConfigs:: function(val) validator.validateField(self + { upgrade_configs: val }, 'upgrade_configs', type + '.withUpgradeConfigs'),
    withUseRemoteAddress:: function(val) validator.validateField(self + { use_remote_address: val }, 'use_remote_address', type + '.withUseRemoteAddress'),
    withVia:: function(val) validator.validateField(self + { via: val }, 'via', type + '.withVia'),
    withXffNumTrustedHops:: function(val) validator.validateField(self + { xff_num_trusted_hops: val }, 'xff_num_trusted_hops', type + '.withXffNumTrustedHops'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}