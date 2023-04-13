// Enum type: envoy.extensions.filters.http.ext_proc.v3.ProcessingMode.BodySendMode
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.filters.http.ext_proc.v3.ProcessingMode.BodySendMode';
local map = {
  BUFFERED: 'BUFFERED',
  BUFFERED_PARTIAL: 'BUFFERED_PARTIAL',
  NONE: 'NONE',
  STREAMED: 'STREAMED',
};

local reverseMap = {
  '0': 'NONE',
  '1': 'STREAMED',
  '2': 'BUFFERED',
  '3': 'BUFFERED_PARTIAL',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.filters.http.ext_proc.v3.ProcessingMode.BodySendMode',
    _validate:: validator,
  },
  validator:: validator,
}