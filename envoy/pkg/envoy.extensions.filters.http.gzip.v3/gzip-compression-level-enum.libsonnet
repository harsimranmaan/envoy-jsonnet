// Enum type: envoy.extensions.filters.http.gzip.v3.Gzip.CompressionLevel.Enum
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.filters.http.gzip.v3.Gzip.CompressionLevel.Enum';
local map = {
  BEST: 'BEST',
  DEFAULT: 'DEFAULT',
  SPEED: 'SPEED',
};

local reverseMap = {
  '0': 'DEFAULT',
  '1': 'BEST',
  '2': 'SPEED',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.filters.http.gzip.v3.Gzip.CompressionLevel.Enum',
    _validate:: validator,
  },
  validator:: validator,
}
