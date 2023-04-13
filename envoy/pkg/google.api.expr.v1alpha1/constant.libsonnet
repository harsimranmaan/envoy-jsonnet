// Message type: google.api.expr.v1alpha1.Constant
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.api.expr.v1alpha1.Constant';
local generator = import '../generator.libsonnet';
local fields = {
  bool_value: {
    type: 'bool',
    allowedNames: [
      'bool_value',
      'boolValue',
    ],
  },
  bytes_value: {
    type: 'bytes',
    allowedNames: [
      'bytes_value',
      'bytesValue',
    ],
  },
  double_value: {
    type: 'double',
    allowedNames: [
      'double_value',
      'doubleValue',
    ],
  },
  duration_value: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'duration_value',
      'durationValue',
    ],
  },
  int64_value: {
    type: 'int64',
    allowedNames: [
      'int64_value',
      'int64Value',
    ],
  },
  null_value: {
    type: 'google.protobuf.NullValue',
    allowedNames: [
      'null_value',
      'nullValue',
    ],
  },
  string_value: {
    type: 'string',
    allowedNames: [
      'string_value',
      'stringValue',
    ],
  },
  timestamp_value: {
    type: 'google.protobuf.Timestamp',
    allowedNames: [
      'timestamp_value',
      'timestampValue',
    ],
  },
  uint64_value: {
    type: 'uint64',
    allowedNames: [
      'uint64_value',
      'uint64Value',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'null_value',
      'bool_value',
      'int64_value',
      'uint64_value',
      'double_value',
      'string_value',
      'bytes_value',
      'duration_value',
      'timestamp_value',
    ],
    required: false,
    group: 'constant_kind',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withBoolValue:: function(val) validator.validateField(self + { bool_value: val }, 'bool_value', type + '.withBoolValue'),
    withBytesValue:: function(val) validator.validateField(self + { bytes_value: val }, 'bytes_value', type + '.withBytesValue'),
    withDoubleValue:: function(val) validator.validateField(self + { double_value: val }, 'double_value', type + '.withDoubleValue'),
    withDurationValue:: function(val) validator.validateField(self + { duration_value: val }, 'duration_value', type + '.withDurationValue'),
    withInt64Value:: function(val) validator.validateField(self + { int64_value: val }, 'int64_value', type + '.withInt64Value'),
    withNullValue:: function(val) validator.validateField(self + { null_value: val }, 'null_value', type + '.withNullValue'),
    withStringValue:: function(val) validator.validateField(self + { string_value: val }, 'string_value', type + '.withStringValue'),
    withTimestampValue:: function(val) validator.validateField(self + { timestamp_value: val }, 'timestamp_value', type + '.withTimestampValue'),
    withUint64Value:: function(val) validator.validateField(self + { uint64_value: val }, 'uint64_value', type + '.withUint64Value'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}