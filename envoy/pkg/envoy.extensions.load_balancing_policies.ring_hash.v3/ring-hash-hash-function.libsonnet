// Enum type: envoy.extensions.load_balancing_policies.ring_hash.v3.RingHash.HashFunction
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.load_balancing_policies.ring_hash.v3.RingHash.HashFunction';
local map = {
  DEFAULT_HASH: 'DEFAULT_HASH',
  MURMUR_HASH_2: 'MURMUR_HASH_2',
  XX_HASH: 'XX_HASH',
};

local reverseMap = {
  '0': 'DEFAULT_HASH',
  '1': 'XX_HASH',
  '2': 'MURMUR_HASH_2',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.load_balancing_policies.ring_hash.v3.RingHash.HashFunction',
    _validate:: validator,
  },
  validator:: validator,
}
