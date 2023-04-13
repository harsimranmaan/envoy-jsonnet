// Message type: envoy.extensions.filters.http.ext_proc.v3.ExternalProcessor
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.ext_proc.v3.ExternalProcessor';
local generator = import '../generator.libsonnet';
local fields = {
  async_mode: {
    type: 'bool',
    allowedNames: [
      'async_mode',
      'asyncMode',
    ],
  },
  failure_mode_allow: {
    type: 'bool',
    allowedNames: [
      'failure_mode_allow',
      'failureModeAllow',
    ],
  },
  grpc_service: {
    type: 'envoy.config.core.v3.GrpcService',
    allowedNames: [
      'grpc_service',
      'grpcService',
    ],
  },
  message_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'message_timeout',
      'messageTimeout',
    ],
  },
  mutation_rules: {
    type: 'envoy.config.common.mutation_rules.v3.HeaderMutationRules',
    allowedNames: [
      'mutation_rules',
      'mutationRules',
    ],
  },
  processing_mode: {
    type: 'envoy.extensions.filters.http.ext_proc.v3.ProcessingMode',
    allowedNames: [
      'processing_mode',
      'processingMode',
    ],
  },
  request_attributes: {
    type: 'string',
    allowedNames: [
      'request_attributes',
      'requestAttributes',
    ],
    containerType: 'list',
  },
  response_attributes: {
    type: 'string',
    allowedNames: [
      'response_attributes',
      'responseAttributes',
    ],
    containerType: 'list',
  },
  stat_prefix: {
    type: 'string',
    allowedNames: [
      'stat_prefix',
      'statPrefix',
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
    withAsyncMode:: function(val) validator.validateField(self + { async_mode: val }, 'async_mode', type + '.withAsyncMode'),
    withFailureModeAllow:: function(val) validator.validateField(self + { failure_mode_allow: val }, 'failure_mode_allow', type + '.withFailureModeAllow'),
    withGrpcService:: function(val) validator.validateField(self + { grpc_service: val }, 'grpc_service', type + '.withGrpcService'),
    withMessageTimeout:: function(val) validator.validateField(self + { message_timeout: val }, 'message_timeout', type + '.withMessageTimeout'),
    withMutationRules:: function(val) validator.validateField(self + { mutation_rules: val }, 'mutation_rules', type + '.withMutationRules'),
    withProcessingMode:: function(val) validator.validateField(self + { processing_mode: val }, 'processing_mode', type + '.withProcessingMode'),
    withRequestAttributes:: function(val) validator.validateField(self + { request_attributes: val }, 'request_attributes', type + '.withRequestAttributes'),
    withResponseAttributes:: function(val) validator.validateField(self + { response_attributes: val }, 'response_attributes', type + '.withResponseAttributes'),
    withStatPrefix:: function(val) validator.validateField(self + { stat_prefix: val }, 'stat_prefix', type + '.withStatPrefix'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}