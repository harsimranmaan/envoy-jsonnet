// Message type: envoy.config.route.v3.RouteAction.HashPolicy.ConnectionProperties
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RouteAction.HashPolicy.ConnectionProperties';
local generator = import '../generator.libsonnet';
local fields = {
  source_ip: {
    type: 'bool',
    allowedNames: [
      'source_ip',
      'sourceIp',
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
    withSourceIp:: function(val) validator.validateField(self + { source_ip: val }, 'source_ip', type + '.withSourceIp'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
