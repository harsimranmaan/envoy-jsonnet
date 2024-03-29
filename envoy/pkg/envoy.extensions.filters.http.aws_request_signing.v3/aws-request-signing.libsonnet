// Message type: envoy.extensions.filters.http.aws_request_signing.v3.AwsRequestSigning
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.aws_request_signing.v3.AwsRequestSigning';
local generator = import '../generator.libsonnet';
local fields = {
  host_rewrite: {
    type: 'string',
    allowedNames: [
      'host_rewrite',
      'hostRewrite',
    ],
  },
  match_excluded_headers: {
    type: 'envoy.type.matcher.v3.StringMatcher',
    allowedNames: [
      'match_excluded_headers',
      'matchExcludedHeaders',
    ],
    containerType: 'list',
  },
  region: {
    type: 'string',
    allowedNames: [
      'region',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  service_name: {
    type: 'string',
    allowedNames: [
      'service_name',
      'serviceName',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  use_unsigned_payload: {
    type: 'bool',
    allowedNames: [
      'use_unsigned_payload',
      'useUnsignedPayload',
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
    withHostRewrite:: function(val) validator.validateField(self + { host_rewrite: val }, 'host_rewrite', type + '.withHostRewrite'),
    withMatchExcludedHeaders:: function(val) validator.validateField(self + { match_excluded_headers: val }, 'match_excluded_headers', type + '.withMatchExcludedHeaders'),
    withRegion:: function(val) validator.validateField(self + { region: val }, 'region', type + '.withRegion'),
    withServiceName:: function(val) validator.validateField(self + { service_name: val }, 'service_name', type + '.withServiceName'),
    withUseUnsignedPayload:: function(val) validator.validateField(self + { use_unsigned_payload: val }, 'use_unsigned_payload', type + '.withUseUnsignedPayload'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
