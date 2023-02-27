// Enum type: envoy.config.cluster.v3.Cluster.DiscoveryType
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.cluster.v3.Cluster.DiscoveryType';
local map = {
  EDS: 'EDS',
  LOGICAL_DNS: 'LOGICAL_DNS',
  ORIGINAL_DST: 'ORIGINAL_DST',
  STATIC: 'STATIC',
  STRICT_DNS: 'STRICT_DNS',
};

local reverseMap = {
  '0': 'STATIC',
  '1': 'STRICT_DNS',
  '2': 'LOGICAL_DNS',
  '3': 'EDS',
  '4': 'ORIGINAL_DST',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.cluster.v3.Cluster.DiscoveryType',
    _validate:: validator,
  },
  validator:: validator,
}
