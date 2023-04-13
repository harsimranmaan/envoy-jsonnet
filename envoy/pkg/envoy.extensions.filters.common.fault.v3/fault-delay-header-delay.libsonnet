// Message type: envoy.extensions.filters.common.fault.v3.FaultDelay.HeaderDelay
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.common.fault.v3.FaultDelay.HeaderDelay';
local generator = import '../generator.libsonnet';
local fields = {};
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
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
