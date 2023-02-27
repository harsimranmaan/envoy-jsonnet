// Enum type: envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicy';
local map = {
  ANY_ENDPOINT: 'ANY_ENDPOINT',
  DEFAULT_SUBSET: 'DEFAULT_SUBSET',
  KEYS_SUBSET: 'KEYS_SUBSET',
  NOT_DEFINED: 'NOT_DEFINED',
  NO_FALLBACK: 'NO_FALLBACK',
};

local reverseMap = {
  '0': 'NOT_DEFINED',
  '1': 'NO_FALLBACK',
  '2': 'ANY_ENDPOINT',
  '3': 'DEFAULT_SUBSET',
  '4': 'KEYS_SUBSET',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicy',
    _validate:: validator,
  },
  validator:: validator,
}
