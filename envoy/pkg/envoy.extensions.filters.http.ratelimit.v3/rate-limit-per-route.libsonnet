// Message type: envoy.extensions.filters.http.ratelimit.v3.RateLimitPerRoute
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.ratelimit.v3.RateLimitPerRoute';
local generator = import '../generator.libsonnet';
local fields = {
  override_option: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitPerRoute.OverrideOptions',
    allowedNames: [
      'override_option',
      'overrideOption',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  rate_limits: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitConfig',
    allowedNames: [
      'rate_limits',
      'rateLimits',
    ],
    containerType: 'list',
  },
  vh_rate_limits: {
    type: 'envoy.extensions.filters.http.ratelimit.v3.RateLimitPerRoute.VhRateLimitsOptions',
    allowedNames: [
      'vh_rate_limits',
      'vhRateLimits',
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
    VhRateLimitsOptions:: (import 'rate-limit-per-route-vh-rate-limits-options.libsonnet').definition,
    OverrideOptions:: (import 'rate-limit-per-route-override-options.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withOverrideOption:: function(val) validator.validateField(self + { override_option: val }, 'override_option', type + '.withOverrideOption'),
    withRateLimits:: function(val) validator.validateField(self + { rate_limits: val }, 'rate_limits', type + '.withRateLimits'),
    withVhRateLimits:: function(val) validator.validateField(self + { vh_rate_limits: val }, 'vh_rate_limits', type + '.withVhRateLimits'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
