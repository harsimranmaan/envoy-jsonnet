// Message type: envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaOverride
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaOverride';
local generator = import '../generator.libsonnet';
local fields = {
  bucket_matchers: {
    type: 'xds.type.matcher.v3.Matcher',
    allowedNames: [
      'bucket_matchers',
      'bucketMatchers',
    ],
  },
  domain: {
    type: 'string',
    allowedNames: [
      'domain',
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
    withBucketMatchers:: function(val) validator.validateField(self + { bucket_matchers: val }, 'bucket_matchers', type + '.withBucketMatchers'),
    withDomain:: function(val) validator.validateField(self + { domain: val }, 'domain', type + '.withDomain'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
