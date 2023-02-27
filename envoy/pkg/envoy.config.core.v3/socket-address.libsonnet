// Message type: envoy.config.core.v3.SocketAddress
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.SocketAddress';
local generator = import '../generator.libsonnet';
local fields = {
  address: {
    type: 'string',
    allowedNames: [
      'address',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  ipv4_compat: {
    type: 'bool',
    allowedNames: [
      'ipv4_compat',
      'ipv4Compat',
    ],
  },
  named_port: {
    type: 'string',
    allowedNames: [
      'named_port',
      'namedPort',
    ],
  },
  port_value: {
    type: 'uint32',
    allowedNames: [
      'port_value',
      'portValue',
    ],
    constraints: {
      Uint32: {
        lte: 65535,
      },
    },
  },
  protocol: {
    type: 'envoy.config.core.v3.SocketAddress.Protocol',
    allowedNames: [
      'protocol',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  resolver_name: {
    type: 'string',
    allowedNames: [
      'resolver_name',
      'resolverName',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'port_value',
      'named_port',
    ],
    required: true,
    group: 'port_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Protocol:: (import 'socket-address-protocol.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withAddress:: function(val) validator.validateField(self + { address: val }, 'address', type + '.withAddress'),
    withIpv4Compat:: function(val) validator.validateField(self + { ipv4_compat: val }, 'ipv4_compat', type + '.withIpv4Compat'),
    withNamedPort:: function(val) validator.validateField(self + { named_port: val }, 'named_port', type + '.withNamedPort'),
    withPortValue:: function(val) validator.validateField(self + { port_value: val }, 'port_value', type + '.withPortValue'),
    withProtocol:: function(val) validator.validateField(self + { protocol: val }, 'protocol', type + '.withProtocol'),
    withResolverName:: function(val) validator.validateField(self + { resolver_name: val }, 'resolver_name', type + '.withResolverName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
