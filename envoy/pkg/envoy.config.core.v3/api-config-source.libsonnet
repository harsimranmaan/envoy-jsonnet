// Message type: envoy.config.core.v3.ApiConfigSource
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.ApiConfigSource';
local generator = import '../generator.libsonnet';
local fields = {
  api_type: {
    type: 'envoy.config.core.v3.ApiConfigSource.ApiType',
    allowedNames: [
      'api_type',
      'apiType',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  cluster_names: {
    type: 'string',
    allowedNames: [
      'cluster_names',
      'clusterNames',
    ],
    containerType: 'list',
  },
  config_validators: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'config_validators',
      'configValidators',
    ],
    containerType: 'list',
  },
  grpc_services: {
    type: 'envoy.config.core.v3.GrpcService',
    allowedNames: [
      'grpc_services',
      'grpcServices',
    ],
    containerType: 'list',
  },
  rate_limit_settings: {
    type: 'envoy.config.core.v3.RateLimitSettings',
    allowedNames: [
      'rate_limit_settings',
      'rateLimitSettings',
    ],
  },
  refresh_delay: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'refresh_delay',
      'refreshDelay',
    ],
  },
  request_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'request_timeout',
      'requestTimeout',
    ],
    constraints: {
      Duration: {
        gt: {},
      },
    },
  },
  set_node_on_first_message_only: {
    type: 'bool',
    allowedNames: [
      'set_node_on_first_message_only',
      'setNodeOnFirstMessageOnly',
    ],
  },
  transport_api_version: {
    type: 'envoy.config.core.v3.ApiVersion',
    allowedNames: [
      'transport_api_version',
      'transportApiVersion',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    ApiType:: (import 'api-config-source-api-type.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withApiType:: function(val) validator.validateField(self + { api_type: val }, 'api_type', type + '.withApiType'),
    withClusterNames:: function(val) validator.validateField(self + { cluster_names: val }, 'cluster_names', type + '.withClusterNames'),
    withConfigValidators:: function(val) validator.validateField(self + { config_validators: val }, 'config_validators', type + '.withConfigValidators'),
    withGrpcServices:: function(val) validator.validateField(self + { grpc_services: val }, 'grpc_services', type + '.withGrpcServices'),
    withRateLimitSettings:: function(val) validator.validateField(self + { rate_limit_settings: val }, 'rate_limit_settings', type + '.withRateLimitSettings'),
    withRefreshDelay:: function(val) validator.validateField(self + { refresh_delay: val }, 'refresh_delay', type + '.withRefreshDelay'),
    withRequestTimeout:: function(val) validator.validateField(self + { request_timeout: val }, 'request_timeout', type + '.withRequestTimeout'),
    withSetNodeOnFirstMessageOnly:: function(val) validator.validateField(self + { set_node_on_first_message_only: val }, 'set_node_on_first_message_only', type + '.withSetNodeOnFirstMessageOnly'),
    withTransportApiVersion:: function(val) validator.validateField(self + { transport_api_version: val }, 'transport_api_version', type + '.withTransportApiVersion'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}