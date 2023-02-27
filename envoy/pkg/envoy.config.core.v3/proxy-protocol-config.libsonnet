// Message type: envoy.config.core.v3.ProxyProtocolConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.ProxyProtocolConfig';
local generator = import '../generator.libsonnet';
local fields = {
  version: {
    type: 'envoy.config.core.v3.ProxyProtocolConfig.Version',
    allowedNames: [
      'version',
    ],
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Version:: (import 'proxy-protocol-config-version.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withVersion:: function(val) validator.validateField(self + { version: val }, 'version', type + '.withVersion'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}