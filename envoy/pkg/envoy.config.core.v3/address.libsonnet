// Message type: envoy.config.core.v3.Address
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.Address';
local generator = import '../generator.libsonnet';
local fields = {
  envoy_internal_address: {
    type: 'envoy.config.core.v3.EnvoyInternalAddress',
    allowedNames: [
      'envoy_internal_address',
      'envoyInternalAddress',
    ],
  },
  pipe: {
    type: 'envoy.config.core.v3.Pipe',
    allowedNames: [
      'pipe',
    ],
  },
  socket_address: {
    type: 'envoy.config.core.v3.SocketAddress',
    allowedNames: [
      'socket_address',
      'socketAddress',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'socket_address',
      'pipe',
      'envoy_internal_address',
    ],
    required: true,
    group: 'address',
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
    withEnvoyInternalAddress:: function(val) validator.validateField(self + { envoy_internal_address: val }, 'envoy_internal_address', type + '.withEnvoyInternalAddress'),
    withPipe:: function(val) validator.validateField(self + { pipe: val }, 'pipe', type + '.withPipe'),
    withSocketAddress:: function(val) validator.validateField(self + { socket_address: val }, 'socket_address', type + '.withSocketAddress'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
