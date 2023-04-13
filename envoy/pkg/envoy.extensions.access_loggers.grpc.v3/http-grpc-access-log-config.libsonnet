// Message type: envoy.extensions.access_loggers.grpc.v3.HttpGrpcAccessLogConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.access_loggers.grpc.v3.HttpGrpcAccessLogConfig';
local generator = import '../generator.libsonnet';
local fields = {
  additional_request_headers_to_log: {
    type: 'string',
    allowedNames: [
      'additional_request_headers_to_log',
      'additionalRequestHeadersToLog',
    ],
    containerType: 'list',
  },
  additional_response_headers_to_log: {
    type: 'string',
    allowedNames: [
      'additional_response_headers_to_log',
      'additionalResponseHeadersToLog',
    ],
    containerType: 'list',
  },
  additional_response_trailers_to_log: {
    type: 'string',
    allowedNames: [
      'additional_response_trailers_to_log',
      'additionalResponseTrailersToLog',
    ],
    containerType: 'list',
  },
  common_config: {
    type: 'envoy.extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfig',
    allowedNames: [
      'common_config',
      'commonConfig',
    ],
    required: true,
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
    withAdditionalRequestHeadersToLog:: function(val) validator.validateField(self + { additional_request_headers_to_log: val }, 'additional_request_headers_to_log', type + '.withAdditionalRequestHeadersToLog'),
    withAdditionalResponseHeadersToLog:: function(val) validator.validateField(self + { additional_response_headers_to_log: val }, 'additional_response_headers_to_log', type + '.withAdditionalResponseHeadersToLog'),
    withAdditionalResponseTrailersToLog:: function(val) validator.validateField(self + { additional_response_trailers_to_log: val }, 'additional_response_trailers_to_log', type + '.withAdditionalResponseTrailersToLog'),
    withCommonConfig:: function(val) validator.validateField(self + { common_config: val }, 'common_config', type + '.withCommonConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
