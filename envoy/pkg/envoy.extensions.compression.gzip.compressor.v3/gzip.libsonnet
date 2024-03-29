// Message type: envoy.extensions.compression.gzip.compressor.v3.Gzip
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.compression.gzip.compressor.v3.Gzip';
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
    type: 'envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionLevel',
    allowedNames: [
      'compression_level',
      'compressionLevel',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  compression_strategy: {
    type: 'envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionStrategy',
    allowedNames: [
      'compression_strategy',
      'compressionStrategy',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  memory_level: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'memory_level',
      'memoryLevel',
    ],
    constraints: {
      Uint32: {
        gte: 1,
        lte: 9,
      },
    },
  },
  window_bits: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'window_bits',
      'windowBits',
    ],
    constraints: {
      Uint32: {
        gte: 9,
        lte: 15,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    CompressionStrategy:: (import 'gzip-compression-strategy.libsonnet').definition,
    CompressionLevel:: (import 'gzip-compression-level.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withChunkSize:: function(val) validator.validateField(self + { chunk_size: val }, 'chunk_size', type + '.withChunkSize'),
    withCompressionLevel:: function(val) validator.validateField(self + { compression_level: val }, 'compression_level', type + '.withCompressionLevel'),
    withCompressionStrategy:: function(val) validator.validateField(self + { compression_strategy: val }, 'compression_strategy', type + '.withCompressionStrategy'),
    withMemoryLevel:: function(val) validator.validateField(self + { memory_level: val }, 'memory_level', type + '.withMemoryLevel'),
    withWindowBits:: function(val) validator.validateField(self + { window_bits: val }, 'window_bits', type + '.withWindowBits'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
