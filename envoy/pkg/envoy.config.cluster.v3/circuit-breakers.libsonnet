// Message type: envoy.config.cluster.v3.CircuitBreakers
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.cluster.v3.CircuitBreakers';
local generator = import '../generator.libsonnet';
local fields = {
  per_host_thresholds: {
    type: 'envoy.config.cluster.v3.CircuitBreakers.Thresholds',
    allowedNames: [
      'per_host_thresholds',
      'perHostThresholds',
    ],
    containerType: 'list',
  },
  thresholds: {
    type: 'envoy.config.cluster.v3.CircuitBreakers.Thresholds',
    allowedNames: [
      'thresholds',
    ],
    containerType: 'list',
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Thresholds:: (import 'circuit-breakers-thresholds.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withPerHostThresholds:: function(val) validator.validateField(self + { per_host_thresholds: val }, 'per_host_thresholds', type + '.withPerHostThresholds'),
    withThresholds:: function(val) validator.validateField(self + { thresholds: val }, 'thresholds', type + '.withThresholds'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
