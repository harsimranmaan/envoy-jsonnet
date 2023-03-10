// Enum type: envoy.config.cluster.v3.Cluster.ClusterProtocolSelection
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.cluster.v3.Cluster.ClusterProtocolSelection';
local map = {
  USE_CONFIGURED_PROTOCOL: 'USE_CONFIGURED_PROTOCOL',
  USE_DOWNSTREAM_PROTOCOL: 'USE_DOWNSTREAM_PROTOCOL',
};

local reverseMap = {
  '0': 'USE_CONFIGURED_PROTOCOL',
  '1': 'USE_DOWNSTREAM_PROTOCOL',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.cluster.v3.Cluster.ClusterProtocolSelection',
    _validate:: validator,
  },
  validator:: validator,
}
