// Enum type: envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings.ReadPolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings.ReadPolicy';
local map = {
  ANY: 'ANY',
  MASTER: 'MASTER',
  PREFER_MASTER: 'PREFER_MASTER',
  PREFER_REPLICA: 'PREFER_REPLICA',
  REPLICA: 'REPLICA',
};

local reverseMap = {
  '0': 'MASTER',
  '1': 'PREFER_MASTER',
  '2': 'REPLICA',
  '3': 'PREFER_REPLICA',
  '4': 'ANY',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings.ReadPolicy',
    _validate:: validator,
  },
  validator:: validator,
}
