// Enum type: envoy.config.accesslog.v3.GrpcStatusFilter.Status
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.config.accesslog.v3.GrpcStatusFilter.Status';
local map = {
  ABORTED: 'ABORTED',
  ALREADY_EXISTS: 'ALREADY_EXISTS',
  CANCELED: 'CANCELED',
  DATA_LOSS: 'DATA_LOSS',
  DEADLINE_EXCEEDED: 'DEADLINE_EXCEEDED',
  FAILED_PRECONDITION: 'FAILED_PRECONDITION',
  INTERNAL: 'INTERNAL',
  INVALID_ARGUMENT: 'INVALID_ARGUMENT',
  NOT_FOUND: 'NOT_FOUND',
  OK: 'OK',
  OUT_OF_RANGE: 'OUT_OF_RANGE',
  PERMISSION_DENIED: 'PERMISSION_DENIED',
  RESOURCE_EXHAUSTED: 'RESOURCE_EXHAUSTED',
  UNAUTHENTICATED: 'UNAUTHENTICATED',
  UNAVAILABLE: 'UNAVAILABLE',
  UNIMPLEMENTED: 'UNIMPLEMENTED',
  UNKNOWN: 'UNKNOWN',
};

local reverseMap = {
  '0': 'OK',
  '1': 'CANCELED',
  '10': 'ABORTED',
  '11': 'OUT_OF_RANGE',
  '12': 'UNIMPLEMENTED',
  '13': 'INTERNAL',
  '14': 'UNAVAILABLE',
  '15': 'DATA_LOSS',
  '16': 'UNAUTHENTICATED',
  '2': 'UNKNOWN',
  '3': 'INVALID_ARGUMENT',
  '4': 'DEADLINE_EXCEEDED',
  '5': 'NOT_FOUND',
  '6': 'ALREADY_EXISTS',
  '7': 'PERMISSION_DENIED',
  '8': 'RESOURCE_EXHAUSTED',
  '9': 'FAILED_PRECONDITION',
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
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.config.accesslog.v3.GrpcStatusFilter.Status',
    _validate:: validator,
  },
  validator:: validator,
}