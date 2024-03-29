// Enum type: envoy.extensions.compression.zstd.compressor.v3.Zstd.Strategy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.compression.zstd.compressor.v3.Zstd.Strategy';
local map = {
  BTLAZY2: 'BTLAZY2',
  BTOPT: 'BTOPT',
  BTULTRA: 'BTULTRA',
  BTULTRA2: 'BTULTRA2',
  DEFAULT: 'DEFAULT',
  DFAST: 'DFAST',
  FAST: 'FAST',
  GREEDY: 'GREEDY',
  LAZY: 'LAZY',
  LAZY2: 'LAZY2',
};

local reverseMap = {
  '0': 'DEFAULT',
  '1': 'FAST',
  '2': 'DFAST',
  '3': 'GREEDY',
  '4': 'LAZY',
  '5': 'LAZY2',
  '6': 'BTLAZY2',
  '7': 'BTOPT',
  '8': 'BTULTRA',
  '9': 'BTULTRA2',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.compression.zstd.compressor.v3.Zstd.Strategy',
    _validate:: validator,
  },
  validator:: validator,
}
