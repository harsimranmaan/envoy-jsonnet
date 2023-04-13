// Enum type: envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionStrategy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionStrategy';
local map = {
  DEFAULT_STRATEGY: 'DEFAULT_STRATEGY',
  FILTERED: 'FILTERED',
  FIXED: 'FIXED',
  HUFFMAN_ONLY: 'HUFFMAN_ONLY',
  RLE: 'RLE',
};

local reverseMap = {
  '0': 'DEFAULT_STRATEGY',
  '1': 'FILTERED',
  '2': 'HUFFMAN_ONLY',
  '3': 'RLE',
  '4': 'FIXED',
};

local validator = function(input, ctx='') (
  local context = if ctx == '' then type else ctx;
  local v = std.toString(input);
  if std.objectHas(map, v) || std.objectHas(reverseMap, v)
  then input
  else error '%s: invalid value %s for enum %s' % [context, v, type]
);

{
  definition: map {
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionStrategy',
    _validate:: validator,
  },
  validator:: validator,
}
