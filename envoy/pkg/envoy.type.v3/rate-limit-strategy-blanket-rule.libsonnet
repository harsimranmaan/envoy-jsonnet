// Enum type: envoy.type.v3.RateLimitStrategy.BlanketRule
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.type.v3.RateLimitStrategy.BlanketRule';
local map = {
  ALLOW_ALL: 'ALLOW_ALL',
  DENY_ALL: 'DENY_ALL',
};

local reverseMap = {
  '0': 'ALLOW_ALL',
  '1': 'DENY_ALL',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.type.v3.RateLimitStrategy.BlanketRule',
    _validate:: validator,
  },
  validator:: validator,
}
