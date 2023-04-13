// Message type: envoy.extensions.bootstrap.internal_listener.v3.InternalListener
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.bootstrap.internal_listener.v3.InternalListener';
local generator = import '../generator.libsonnet';
local fields = {
  buffer_size_kb: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'buffer_size_kb',
      'bufferSizeKb',
    ],
    constraints: {
      Uint32: {
        gte: 1,
        lte: 8192,
      },
    },
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
    withBufferSizeKb:: function(val) validator.validateField(self + { buffer_size_kb: val }, 'buffer_size_kb', type + '.withBufferSizeKb'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
