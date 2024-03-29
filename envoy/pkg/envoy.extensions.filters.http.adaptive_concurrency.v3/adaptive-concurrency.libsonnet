// Message type: envoy.extensions.filters.http.adaptive_concurrency.v3.AdaptiveConcurrency
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.adaptive_concurrency.v3.AdaptiveConcurrency';
local generator = import '../generator.libsonnet';
local fields = {
  concurrency_limit_exceeded_status: {
    type: 'envoy.type.v3.HttpStatus',
    allowedNames: [
      'concurrency_limit_exceeded_status',
      'concurrencyLimitExceededStatus',
    ],
  },
  enabled: {
    type: 'envoy.config.core.v3.RuntimeFeatureFlag',
    allowedNames: [
      'enabled',
    ],
  },
  gradient_controller_config: {
    type: 'envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfig',
    allowedNames: [
      'gradient_controller_config',
      'gradientControllerConfig',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'gradient_controller_config',
    ],
    required: true,
    group: 'concurrency_controller_config',
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
    withConcurrencyLimitExceededStatus:: function(val) validator.validateField(self + { concurrency_limit_exceeded_status: val }, 'concurrency_limit_exceeded_status', type + '.withConcurrencyLimitExceededStatus'),
    withEnabled:: function(val) validator.validateField(self + { enabled: val }, 'enabled', type + '.withEnabled'),
    withGradientControllerConfig:: function(val) validator.validateField(self + { gradient_controller_config: val }, 'gradient_controller_config', type + '.withGradientControllerConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
