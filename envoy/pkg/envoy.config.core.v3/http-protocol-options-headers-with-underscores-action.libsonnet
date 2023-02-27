// Enum type: envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresAction
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresAction';
local map = {
  ALLOW: 'ALLOW',
  DROP_HEADER: 'DROP_HEADER',
  REJECT_REQUEST: 'REJECT_REQUEST',
};

local reverseMap = {
  '0': 'ALLOW',
  '1': 'REJECT_REQUEST',
  '2': 'DROP_HEADER',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresAction',
    _validate:: validator,
  },
  validator:: validator,
}