// Enum type: envoy.config.core.v3.ApiVersion
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.core.v3.ApiVersion';
local map = {
  AUTO: 'AUTO',
  V2: 'V2',
  V3: 'V3',
};

local reverseMap = {
  '0': 'AUTO',
  '1': 'V2',
  '2': 'V3',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.core.v3.ApiVersion',
    _validate:: validator,
  },
  validator:: validator,
}
