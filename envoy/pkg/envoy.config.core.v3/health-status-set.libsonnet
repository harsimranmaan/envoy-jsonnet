// Message type: envoy.config.core.v3.HealthStatusSet
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.HealthStatusSet';
local generator = import '../generator.libsonnet';
local fields = {
  statuses: {
    type: 'envoy.config.core.v3.HealthStatus',
    allowedNames: [
      'statuses',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        items: {
          Type: {
            Enum: {
              defined_only: true,
            },
          },
        },
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
    withStatuses:: function(val) validator.validateField(self + { statuses: val }, 'statuses', type + '.withStatuses'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}