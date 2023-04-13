// Message type: envoy.extensions.compression.brotli.compressor.v3.Brotli
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.compression.brotli.compressor.v3.Brotli';
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
  disable_literal_context_modeling: {
    type: 'bool',
    allowedNames: [
      'disable_literal_context_modeling',
      'disableLiteralContextModeling',
    ],
  },
  encoder_mode: {
    type: 'envoy.extensions.compression.brotli.compressor.v3.Brotli.EncoderMode',
    allowedNames: [
      'encoder_mode',
      'encoderMode',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  input_block_bits: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'input_block_bits',
      'inputBlockBits',
    ],
    constraints: {
      Uint32: {
        gte: 16,
        lte: 24,
      },
    },
  },
  quality: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'quality',
    ],
    constraints: {
      Uint32: {
        lte: 11,
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
        gte: 10,
        lte: 24,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    EncoderMode:: (import 'brotli-encoder-mode.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withChunkSize:: function(val) validator.validateField(self + { chunk_size: val }, 'chunk_size', type + '.withChunkSize'),
    withDisableLiteralContextModeling:: function(val) validator.validateField(self + { disable_literal_context_modeling: val }, 'disable_literal_context_modeling', type + '.withDisableLiteralContextModeling'),
    withEncoderMode:: function(val) validator.validateField(self + { encoder_mode: val }, 'encoder_mode', type + '.withEncoderMode'),
    withInputBlockBits:: function(val) validator.validateField(self + { input_block_bits: val }, 'input_block_bits', type + '.withInputBlockBits'),
    withQuality:: function(val) validator.validateField(self + { quality: val }, 'quality', type + '.withQuality'),
    withWindowBits:: function(val) validator.validateField(self + { window_bits: val }, 'window_bits', type + '.withWindowBits'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}