// Message type: envoy.config.overload.v3.ScaledTrigger
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.overload.v3.ScaledTrigger';
local generator = import '../generator.libsonnet';
local fields = {
  saturation_threshold: {
    type: 'double',
    allowedNames: [
      'saturation_threshold',
      'saturationThreshold',
    ],
    constraints: {
      Double: {
        gte: 0,
        lte: 1,
      },
    },
  },
  scaling_threshold: {
    type: 'double',
    allowedNames: [
      'scaling_threshold',
      'scalingThreshold',
    ],
    constraints: {
      Double: {
        gte: 0,
        lte: 1,
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
    withSaturationThreshold:: function(val) validator.validateField(self + { saturation_threshold: val }, 'saturation_threshold', type + '.withSaturationThreshold'),
    withScalingThreshold:: function(val) validator.validateField(self + { scaling_threshold: val }, 'scaling_threshold', type + '.withScalingThreshold'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
