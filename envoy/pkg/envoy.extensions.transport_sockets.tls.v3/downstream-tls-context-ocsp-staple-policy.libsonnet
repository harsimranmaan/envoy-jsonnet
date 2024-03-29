// Enum type: envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.OcspStaplePolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.OcspStaplePolicy';
local map = {
  LENIENT_STAPLING: 'LENIENT_STAPLING',
  MUST_STAPLE: 'MUST_STAPLE',
  STRICT_STAPLING: 'STRICT_STAPLING',
};

local reverseMap = {
  '0': 'LENIENT_STAPLING',
  '1': 'STRICT_STAPLING',
  '2': 'MUST_STAPLE',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.OcspStaplePolicy',
    _validate:: validator,
  },
  validator:: validator,
}
