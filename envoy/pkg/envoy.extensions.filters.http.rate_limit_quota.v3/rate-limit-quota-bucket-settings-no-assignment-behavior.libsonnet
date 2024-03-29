// Message type: envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.NoAssignmentBehavior
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.NoAssignmentBehavior';
local generator = import '../generator.libsonnet';
local fields = {
  fallback_rate_limit: {
    type: 'envoy.type.v3.RateLimitStrategy',
    allowedNames: [
      'fallback_rate_limit',
      'fallbackRateLimit',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'fallback_rate_limit',
    ],
    required: true,
    group: 'no_assignment_behavior',
  },
];
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
    withFallbackRateLimit:: function(val) validator.validateField(self + { fallback_rate_limit: val }, 'fallback_rate_limit', type + '.withFallbackRateLimit'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
