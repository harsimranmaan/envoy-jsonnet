// Message type: envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig';
local generator = import '../generator.libsonnet';
local fields = {
  cidr_ranges: {
    type: 'envoy.config.core.v3.CidrRange',
    allowedNames: [
      'cidr_ranges',
      'cidrRanges',
    ],
    containerType: 'list',
  },
  unix_sockets: {
    type: 'bool',
    allowedNames: [
      'unix_sockets',
      'unixSockets',
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
    withCidrRanges:: function(val) validator.validateField(self + { cidr_ranges: val }, 'cidr_ranges', type + '.withCidrRanges'),
    withUnixSockets:: function(val) validator.validateField(self + { unix_sockets: val }, 'unix_sockets', type + '.withUnixSockets'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
