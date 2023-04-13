// Message type: envoy.extensions.transport_sockets.tls.v3.TlsKeyLog
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.transport_sockets.tls.v3.TlsKeyLog';
local generator = import '../generator.libsonnet';
local fields = {
  local_address_range: {
    type: 'envoy.config.core.v3.CidrRange',
    allowedNames: [
      'local_address_range',
      'localAddressRange',
    ],
    containerType: 'list',
  },
  path: {
    type: 'string',
    allowedNames: [
      'path',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  remote_address_range: {
    type: 'envoy.config.core.v3.CidrRange',
    allowedNames: [
      'remote_address_range',
      'remoteAddressRange',
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
    withLocalAddressRange:: function(val) validator.validateField(self + { local_address_range: val }, 'local_address_range', type + '.withLocalAddressRange'),
    withPath:: function(val) validator.validateField(self + { path: val }, 'path', type + '.withPath'),
    withRemoteAddressRange:: function(val) validator.validateField(self + { remote_address_range: val }, 'remote_address_range', type + '.withRemoteAddressRange'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}