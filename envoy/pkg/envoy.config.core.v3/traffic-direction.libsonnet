// Enum type: envoy.config.core.v3.TrafficDirection
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.core.v3.TrafficDirection';
local map = {
  INBOUND: 'INBOUND',
  OUTBOUND: 'OUTBOUND',
  UNSPECIFIED: 'UNSPECIFIED',
};

local reverseMap = {
  '0': 'UNSPECIFIED',
  '1': 'INBOUND',
  '2': 'OUTBOUND',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.core.v3.TrafficDirection',
    _validate:: validator,
  },
  validator:: validator,
}
