// Enum type: envoy.config.core.v3.HealthStatus
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.core.v3.HealthStatus';
local map = {
  DEGRADED: 'DEGRADED',
  DRAINING: 'DRAINING',
  HEALTHY: 'HEALTHY',
  TIMEOUT: 'TIMEOUT',
  UNHEALTHY: 'UNHEALTHY',
  UNKNOWN: 'UNKNOWN',
};

local reverseMap = {
  '0': 'UNKNOWN',
  '1': 'HEALTHY',
  '2': 'UNHEALTHY',
  '3': 'DRAINING',
  '4': 'TIMEOUT',
  '5': 'DEGRADED',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.core.v3.HealthStatus',
    _validate:: validator,
  },
  validator:: validator,
}
