// Enum type: envoy.config.core.v3.HeaderValueOption.HeaderAppendAction
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.core.v3.HeaderValueOption.HeaderAppendAction';
local map = {
  ADD_IF_ABSENT: 'ADD_IF_ABSENT',
  APPEND_IF_EXISTS_OR_ADD: 'APPEND_IF_EXISTS_OR_ADD',
  OVERWRITE_IF_EXISTS_OR_ADD: 'OVERWRITE_IF_EXISTS_OR_ADD',
};

local reverseMap = {
  '0': 'APPEND_IF_EXISTS_OR_ADD',
  '1': 'ADD_IF_ABSENT',
  '2': 'OVERWRITE_IF_EXISTS_OR_ADD',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.core.v3.HeaderValueOption.HeaderAppendAction',
    _validate:: validator,
  },
  validator:: validator,
}