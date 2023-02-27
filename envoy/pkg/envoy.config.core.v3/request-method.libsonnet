// Enum type: envoy.config.core.v3.RequestMethod
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.core.v3.RequestMethod';
local map = {
  CONNECT: 'CONNECT',
  DELETE: 'DELETE',
  GET: 'GET',
  HEAD: 'HEAD',
  METHOD_UNSPECIFIED: 'METHOD_UNSPECIFIED',
  OPTIONS: 'OPTIONS',
  PATCH: 'PATCH',
  POST: 'POST',
  PUT: 'PUT',
  TRACE: 'TRACE',
};

local reverseMap = {
  '0': 'METHOD_UNSPECIFIED',
  '1': 'GET',
  '2': 'HEAD',
  '3': 'POST',
  '4': 'PUT',
  '5': 'DELETE',
  '6': 'CONNECT',
  '7': 'OPTIONS',
  '8': 'TRACE',
  '9': 'PATCH',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.core.v3.RequestMethod',
    _validate:: validator,
  },
  validator:: validator,
}
