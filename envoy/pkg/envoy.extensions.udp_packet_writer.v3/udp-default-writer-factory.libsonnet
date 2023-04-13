// Message type: envoy.extensions.udp_packet_writer.v3.UdpDefaultWriterFactory
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.udp_packet_writer.v3.UdpDefaultWriterFactory';
local generator = import '../generator.libsonnet';
local fields = {};
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
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
