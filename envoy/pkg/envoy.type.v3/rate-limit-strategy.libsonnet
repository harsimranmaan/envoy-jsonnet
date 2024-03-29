// Message type: envoy.type.v3.RateLimitStrategy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.v3.RateLimitStrategy';
local generator = import '../generator.libsonnet';
local fields = {
  blanket_rule: {
    type: 'envoy.type.v3.RateLimitStrategy.BlanketRule',
    allowedNames: [
      'blanket_rule',
      'blanketRule',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  requests_per_time_unit: {
    type: 'envoy.type.v3.RateLimitStrategy.RequestsPerTimeUnit',
    allowedNames: [
      'requests_per_time_unit',
      'requestsPerTimeUnit',
    ],
  },
  token_bucket: {
    type: 'envoy.type.v3.TokenBucket',
    allowedNames: [
      'token_bucket',
      'tokenBucket',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'blanket_rule',
      'requests_per_time_unit',
      'token_bucket',
    ],
    required: true,
    group: 'strategy',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    BlanketRule:: (import 'rate-limit-strategy-blanket-rule.libsonnet').definition,
    RequestsPerTimeUnit:: (import 'rate-limit-strategy-requests-per-time-unit.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withBlanketRule:: function(val) validator.validateField(self + { blanket_rule: val }, 'blanket_rule', type + '.withBlanketRule'),
    withRequestsPerTimeUnit:: function(val) validator.validateField(self + { requests_per_time_unit: val }, 'requests_per_time_unit', type + '.withRequestsPerTimeUnit'),
    withTokenBucket:: function(val) validator.validateField(self + { token_bucket: val }, 'token_bucket', type + '.withTokenBucket'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
