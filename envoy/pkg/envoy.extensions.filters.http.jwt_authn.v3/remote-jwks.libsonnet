// Message type: envoy.extensions.filters.http.jwt_authn.v3.RemoteJwks
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.jwt_authn.v3.RemoteJwks';
local generator = import '../generator.libsonnet';
local fields = {
  async_fetch: {
    type: 'envoy.extensions.filters.http.jwt_authn.v3.JwksAsyncFetch',
    allowedNames: [
      'async_fetch',
      'asyncFetch',
    ],
  },
  cache_duration: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'cache_duration',
      'cacheDuration',
    ],
  },
  http_uri: {
    type: 'envoy.config.core.v3.HttpUri',
    allowedNames: [
      'http_uri',
      'httpUri',
    ],
  },
  retry_policy: {
    type: 'envoy.config.core.v3.RetryPolicy',
    allowedNames: [
      'retry_policy',
      'retryPolicy',
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
    withAsyncFetch:: function(val) validator.validateField(self + { async_fetch: val }, 'async_fetch', type + '.withAsyncFetch'),
    withCacheDuration:: function(val) validator.validateField(self + { cache_duration: val }, 'cache_duration', type + '.withCacheDuration'),
    withHttpUri:: function(val) validator.validateField(self + { http_uri: val }, 'http_uri', type + '.withHttpUri'),
    withRetryPolicy:: function(val) validator.validateField(self + { retry_policy: val }, 'retry_policy', type + '.withRetryPolicy'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
