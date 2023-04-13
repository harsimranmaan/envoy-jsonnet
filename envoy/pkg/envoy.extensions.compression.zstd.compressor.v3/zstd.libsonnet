// Message type: envoy.extensions.compression.zstd.compressor.v3.Zstd
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.compression.zstd.compressor.v3.Zstd';
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
  compression_level: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'compression_level',
      'compressionLevel',
    ],
  },
  dictionary: {
    type: 'envoy.config.core.v3.DataSource',
    allowedNames: [
      'dictionary',
    ],
  },
  enable_checksum: {
    type: 'bool',
    allowedNames: [
      'enable_checksum',
      'enableChecksum',
    ],
  },
  strategy: {
    type: 'envoy.extensions.compression.zstd.compressor.v3.Zstd.Strategy',
    allowedNames: [
      'strategy',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Strategy:: (import 'zstd-strategy.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withChunkSize:: function(val) validator.validateField(self + { chunk_size: val }, 'chunk_size', type + '.withChunkSize'),
    withCompressionLevel:: function(val) validator.validateField(self + { compression_level: val }, 'compression_level', type + '.withCompressionLevel'),
    withDictionary:: function(val) validator.validateField(self + { dictionary: val }, 'dictionary', type + '.withDictionary'),
    withEnableChecksum:: function(val) validator.validateField(self + { enable_checksum: val }, 'enable_checksum', type + '.withEnableChecksum'),
    withStrategy:: function(val) validator.validateField(self + { strategy: val }, 'strategy', type + '.withStrategy'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
