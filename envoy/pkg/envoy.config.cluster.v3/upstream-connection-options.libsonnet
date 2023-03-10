// Message type: envoy.config.cluster.v3.UpstreamConnectionOptions
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.cluster.v3.UpstreamConnectionOptions';
local generator = import '../generator.libsonnet';
local fields = {
  set_local_interface_name_on_upstream_connections: {
    type: 'bool',
    allowedNames: [
      'set_local_interface_name_on_upstream_connections',
      'setLocalInterfaceNameOnUpstreamConnections',
    ],
  },
  tcp_keepalive: {
    type: 'envoy.config.core.v3.TcpKeepalive',
    allowedNames: [
      'tcp_keepalive',
      'tcpKeepalive',
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
    withSetLocalInterfaceNameOnUpstreamConnections:: function(val) validator.validateField(self + { set_local_interface_name_on_upstream_connections: val }, 'set_local_interface_name_on_upstream_connections', type + '.withSetLocalInterfaceNameOnUpstreamConnections'),
    withTcpKeepalive:: function(val) validator.validateField(self + { tcp_keepalive: val }, 'tcp_keepalive', type + '.withTcpKeepalive'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
