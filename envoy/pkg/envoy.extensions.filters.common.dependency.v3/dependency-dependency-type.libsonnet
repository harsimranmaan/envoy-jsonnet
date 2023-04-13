// Enum type: envoy.extensions.filters.common.dependency.v3.Dependency.DependencyType
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.filters.common.dependency.v3.Dependency.DependencyType';
local map = {
  DYNAMIC_METADATA: 'DYNAMIC_METADATA',
  FILTER_STATE_KEY: 'FILTER_STATE_KEY',
  HEADER: 'HEADER',
};

local reverseMap = {
  '0': 'HEADER',
  '1': 'FILTER_STATE_KEY',
  '2': 'DYNAMIC_METADATA',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.filters.common.dependency.v3.Dependency.DependencyType',
    _validate:: validator,
  },
  validator:: validator,
}