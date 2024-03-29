// Message type: envoy.extensions.retry.priority.previous_priorities.v3.PreviousPrioritiesConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.retry.priority.previous_priorities.v3.PreviousPrioritiesConfig';
local generator = import '../generator.libsonnet';
local fields = {
  update_frequency: {
    type: 'int32',
    allowedNames: [
      'update_frequency',
      'updateFrequency',
    ],
    constraints: {
      Int32: {
        gt: 0,
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
    withUpdateFrequency:: function(val) validator.validateField(self + { update_frequency: val }, 'update_frequency', type + '.withUpdateFrequency'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
