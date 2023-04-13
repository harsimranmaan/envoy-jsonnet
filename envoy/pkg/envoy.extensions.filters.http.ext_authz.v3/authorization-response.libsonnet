// Message type: envoy.extensions.filters.http.ext_authz.v3.AuthorizationResponse
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.ext_authz.v3.AuthorizationResponse';
local generator = import '../generator.libsonnet';
local fields = {
  allowed_client_headers: {
    type: 'envoy.type.matcher.v3.ListStringMatcher',
    allowedNames: [
      'allowed_client_headers',
      'allowedClientHeaders',
    ],
  },
  allowed_client_headers_on_success: {
    type: 'envoy.type.matcher.v3.ListStringMatcher',
    allowedNames: [
      'allowed_client_headers_on_success',
      'allowedClientHeadersOnSuccess',
    ],
  },
  allowed_upstream_headers: {
    type: 'envoy.type.matcher.v3.ListStringMatcher',
    allowedNames: [
      'allowed_upstream_headers',
      'allowedUpstreamHeaders',
    ],
  },
  allowed_upstream_headers_to_append: {
    type: 'envoy.type.matcher.v3.ListStringMatcher',
    allowedNames: [
      'allowed_upstream_headers_to_append',
      'allowedUpstreamHeadersToAppend',
    ],
  },
  dynamic_metadata_from_headers: {
    type: 'envoy.type.matcher.v3.ListStringMatcher',
    allowedNames: [
      'dynamic_metadata_from_headers',
      'dynamicMetadataFromHeaders',
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
    withAllowedClientHeaders:: function(val) validator.validateField(self + { allowed_client_headers: val }, 'allowed_client_headers', type + '.withAllowedClientHeaders'),
    withAllowedClientHeadersOnSuccess:: function(val) validator.validateField(self + { allowed_client_headers_on_success: val }, 'allowed_client_headers_on_success', type + '.withAllowedClientHeadersOnSuccess'),
    withAllowedUpstreamHeaders:: function(val) validator.validateField(self + { allowed_upstream_headers: val }, 'allowed_upstream_headers', type + '.withAllowedUpstreamHeaders'),
    withAllowedUpstreamHeadersToAppend:: function(val) validator.validateField(self + { allowed_upstream_headers_to_append: val }, 'allowed_upstream_headers_to_append', type + '.withAllowedUpstreamHeadersToAppend'),
    withDynamicMetadataFromHeaders:: function(val) validator.validateField(self + { dynamic_metadata_from_headers: val }, 'dynamic_metadata_from_headers', type + '.withDynamicMetadataFromHeaders'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
