// Enum type: envoy.config.cluster.v3.Cluster.DnsLookupFamily
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.cluster.v3.Cluster.DnsLookupFamily';
local map = {
  ALL: 'ALL',
  AUTO: 'AUTO',
  V4_ONLY: 'V4_ONLY',
  V4_PREFERRED: 'V4_PREFERRED',
  V6_ONLY: 'V6_ONLY',
};

local reverseMap = {
  '0': 'AUTO',
  '1': 'V4_ONLY',
  '2': 'V6_ONLY',
  '3': 'V4_PREFERRED',
  '4': 'ALL',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.cluster.v3.Cluster.DnsLookupFamily',
    _validate:: validator,
  },
  validator:: validator,
}
