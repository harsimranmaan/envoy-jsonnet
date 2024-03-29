// Enum type: envoy.extensions.filters.network.thrift_proxy.filters.header_to_metadata.v3.HeaderToMetadata.ValueEncode
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.filters.network.thrift_proxy.filters.header_to_metadata.v3.HeaderToMetadata.ValueEncode';
local map = {
  BASE64: 'BASE64',
  NONE: 'NONE',
};

local reverseMap = {
  '0': 'NONE',
  '1': 'BASE64',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.filters.network.thrift_proxy.filters.header_to_metadata.v3.HeaderToMetadata.ValueEncode',
    _validate:: validator,
  },
  validator:: validator,
}
