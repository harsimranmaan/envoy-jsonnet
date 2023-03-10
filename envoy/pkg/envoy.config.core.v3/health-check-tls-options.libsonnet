// Message type: envoy.config.core.v3.HealthCheck.TlsOptions
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.HealthCheck.TlsOptions';
local generator = import '../generator.libsonnet';
local fields = {
  alpn_protocols: {
    type: 'string',
    allowedNames: [
      'alpn_protocols',
      'alpnProtocols',
    ],
    containerType: 'list',
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
    withAlpnProtocols:: function(val) validator.validateField(self + { alpn_protocols: val }, 'alpn_protocols', type + '.withAlpnProtocols'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
