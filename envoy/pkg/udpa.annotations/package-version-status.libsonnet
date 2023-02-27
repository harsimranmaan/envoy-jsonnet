// Enum type: udpa.annotations.PackageVersionStatus
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'udpa.annotations.PackageVersionStatus';
local map = {
  ACTIVE: 'ACTIVE',
  FROZEN: 'FROZEN',
  NEXT_MAJOR_VERSION_CANDIDATE: 'NEXT_MAJOR_VERSION_CANDIDATE',
  UNKNOWN: 'UNKNOWN',
};

local reverseMap = {
  '0': 'UNKNOWN',
  '1': 'FROZEN',
  '2': 'ACTIVE',
  '3': 'NEXT_MAJOR_VERSION_CANDIDATE',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'udpa.annotations.PackageVersionStatus',
    _validate:: validator,
  },
  validator:: validator,
}