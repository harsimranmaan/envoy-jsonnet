// Message type: envoy.config.core.v3.ControlPlane
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.ControlPlane';
local generator = import '../generator.libsonnet';
local fields = {
  identifier: {
    type: 'string',
    allowedNames: [
      'identifier',
    ],
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
    withIdentifier:: function(val) validator.validateField(self + { identifier: val }, 'identifier', type + '.withIdentifier'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}