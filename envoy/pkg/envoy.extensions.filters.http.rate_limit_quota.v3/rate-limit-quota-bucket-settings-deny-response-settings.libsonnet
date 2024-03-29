// Message type: envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.DenyResponseSettings
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.DenyResponseSettings';
local generator = import '../generator.libsonnet';
local fields = {
  grpc_status: {
    type: 'google.rpc.Status',
    allowedNames: [
      'grpc_status',
      'grpcStatus',
    ],
  },
  http_body: {
    type: 'google.protobuf.BytesValue',
    allowedNames: [
      'http_body',
      'httpBody',
    ],
  },
  http_status: {
    type: 'envoy.type.v3.HttpStatus',
    allowedNames: [
      'http_status',
      'httpStatus',
    ],
  },
  response_headers_to_add: {
    type: 'envoy.config.core.v3.HeaderValueOption',
    allowedNames: [
      'response_headers_to_add',
      'responseHeadersToAdd',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        max_items: 10,
      },
    },
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
    withGrpcStatus:: function(val) validator.validateField(self + { grpc_status: val }, 'grpc_status', type + '.withGrpcStatus'),
    withHttpBody:: function(val) validator.validateField(self + { http_body: val }, 'http_body', type + '.withHttpBody'),
    withHttpStatus:: function(val) validator.validateField(self + { http_status: val }, 'http_status', type + '.withHttpStatus'),
    withResponseHeadersToAdd:: function(val) validator.validateField(self + { response_headers_to_add: val }, 'response_headers_to_add', type + '.withResponseHeadersToAdd'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
