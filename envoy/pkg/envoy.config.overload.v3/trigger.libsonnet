// Message type: envoy.config.overload.v3.Trigger
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.overload.v3.Trigger';
local generator = import '../generator.libsonnet';
local fields = {
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  scaled: {
    type: 'envoy.config.overload.v3.ScaledTrigger',
    allowedNames: [
      'scaled',
    ],
  },
  threshold: {
    type: 'envoy.config.overload.v3.ThresholdTrigger',
    allowedNames: [
      'threshold',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'threshold',
      'scaled',
    ],
    required: true,
    group: 'trigger_oneof',
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
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withScaled:: function(val) validator.validateField(self + { scaled: val }, 'scaled', type + '.withScaled'),
    withThreshold:: function(val) validator.validateField(self + { threshold: val }, 'threshold', type + '.withThreshold'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
