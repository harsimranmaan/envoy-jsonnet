// Message type: envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.RateLimitOverride
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.RateLimitOverride';
local generator = import '../generator.libsonnet';
local fields = {
  requests_per_unit: {
    type: 'uint32',
    allowedNames: [
      'requests_per_unit',
      'requestsPerUnit',
    ],
  },
  unit: {
    type: 'envoy.type.v3.RateLimitUnit',
    allowedNames: [
      'unit',
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

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withRequestsPerUnit:: function(val) validator.validateField(self + { requests_per_unit: val }, 'requests_per_unit', type + '.withRequestsPerUnit'),
    withUnit:: function(val) validator.validateField(self + { unit: val }, 'unit', type + '.withUnit'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
