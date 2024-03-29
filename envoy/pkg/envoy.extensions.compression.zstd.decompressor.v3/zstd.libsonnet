// Message type: envoy.extensions.compression.zstd.decompressor.v3.Zstd
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.compression.zstd.decompressor.v3.Zstd';
local generator = import '../generator.libsonnet';
local fields = {
  chunk_size: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'chunk_size',
      'chunkSize',
    ],
    constraints: {
      Uint32: {
        gte: 4096,
        lte: 65536,
      },
    },
  },
  dictionaries: {
    type: 'envoy.config.core.v3.DataSource',
    allowedNames: [
      'dictionaries',
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
    withChunkSize:: function(val) validator.validateField(self + { chunk_size: val }, 'chunk_size', type + '.withChunkSize'),
    withDictionaries:: function(val) validator.validateField(self + { dictionaries: val }, 'dictionaries', type + '.withDictionaries'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
