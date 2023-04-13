// Message type: envoy.extensions.transport_sockets.proxy_protocol.v3.ProxyProtocolUpstreamTransport
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.transport_sockets.proxy_protocol.v3.ProxyProtocolUpstreamTransport';
local generator = import '../generator.libsonnet';
local fields = {
  config: {
    type: 'envoy.config.core.v3.ProxyProtocolConfig',
    allowedNames: [
      'config',
    ],
  },
  transport_socket: {
    type: 'envoy.config.core.v3.TransportSocket',
    allowedNames: [
      'transport_socket',
      'transportSocket',
    ],
    required: true,
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
    withConfig:: function(val) validator.validateField(self + { config: val }, 'config', type + '.withConfig'),
    withTransportSocket:: function(val) validator.validateField(self + { transport_socket: val }, 'transport_socket', type + '.withTransportSocket'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
