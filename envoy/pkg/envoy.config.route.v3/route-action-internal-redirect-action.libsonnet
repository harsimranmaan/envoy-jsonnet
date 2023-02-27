// Enum type: envoy.config.route.v3.RouteAction.InternalRedirectAction
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.route.v3.RouteAction.InternalRedirectAction';
local map = {
  HANDLE_INTERNAL_REDIRECT: 'HANDLE_INTERNAL_REDIRECT',
  PASS_THROUGH_INTERNAL_REDIRECT: 'PASS_THROUGH_INTERNAL_REDIRECT',
};

local reverseMap = {
  '0': 'PASS_THROUGH_INTERNAL_REDIRECT',
  '1': 'HANDLE_INTERNAL_REDIRECT',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.route.v3.RouteAction.InternalRedirectAction',
    _validate:: validator,
  },
  validator:: validator,
}
