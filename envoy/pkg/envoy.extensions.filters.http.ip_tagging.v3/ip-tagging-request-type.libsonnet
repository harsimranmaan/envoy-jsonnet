// Enum type: envoy.extensions.filters.http.ip_tagging.v3.IPTagging.RequestType
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.filters.http.ip_tagging.v3.IPTagging.RequestType';
local map = {
  BOTH: 'BOTH',
  EXTERNAL: 'EXTERNAL',
  INTERNAL: 'INTERNAL',
};

local reverseMap = {
  '0': 'BOTH',
  '1': 'INTERNAL',
  '2': 'EXTERNAL',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.filters.http.ip_tagging.v3.IPTagging.RequestType',
    _validate:: validator,
  },
  validator:: validator,
}