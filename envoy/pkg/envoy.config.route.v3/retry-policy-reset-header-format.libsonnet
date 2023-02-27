// Enum type: envoy.config.route.v3.RetryPolicy.ResetHeaderFormat
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.route.v3.RetryPolicy.ResetHeaderFormat';
local map = {
  SECONDS: 'SECONDS',
  UNIX_TIMESTAMP: 'UNIX_TIMESTAMP',
};

local reverseMap = {
  '0': 'SECONDS',
  '1': 'UNIX_TIMESTAMP',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.route.v3.RetryPolicy.ResetHeaderFormat',
    _validate:: validator,
  },
  validator:: validator,
}