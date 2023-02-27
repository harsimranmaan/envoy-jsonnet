// Enum type: google.protobuf.MethodOptions.IdempotencyLevel
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'google.protobuf.MethodOptions.IdempotencyLevel';
local map = {
  IDEMPOTENCY_UNKNOWN: 'IDEMPOTENCY_UNKNOWN',
  IDEMPOTENT: 'IDEMPOTENT',
  NO_SIDE_EFFECTS: 'NO_SIDE_EFFECTS',
};

local reverseMap = {
  '0': 'IDEMPOTENCY_UNKNOWN',
  '1': 'NO_SIDE_EFFECTS',
  '2': 'IDEMPOTENT',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'google.protobuf.MethodOptions.IdempotencyLevel',
    _validate:: validator,
  },
  validator:: validator,
}
