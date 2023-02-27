// Message type: validate.FieldRules
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'validate.FieldRules';
local generator = import '../generator.libsonnet';
local fields = {
  any: {
    type: 'validate.AnyRules',
    allowedNames: [
      'any',
    ],
  },
  bool: {
    type: 'validate.BoolRules',
    allowedNames: [
      'bool',
    ],
  },
  bytes: {
    type: 'validate.BytesRules',
    allowedNames: [
      'bytes',
    ],
  },
  double: {
    type: 'validate.DoubleRules',
    allowedNames: [
      'double',
    ],
  },
  duration: {
    type: 'validate.DurationRules',
    allowedNames: [
      'duration',
    ],
  },
  enum: {
    type: 'validate.EnumRules',
    allowedNames: [
      'enum',
    ],
  },
  fixed32: {
    type: 'validate.Fixed32Rules',
    allowedNames: [
      'fixed32',
    ],
  },
  fixed64: {
    type: 'validate.Fixed64Rules',
    allowedNames: [
      'fixed64',
    ],
  },
  float: {
    type: 'validate.FloatRules',
    allowedNames: [
      'float',
    ],
  },
  int32: {
    type: 'validate.Int32Rules',
    allowedNames: [
      'int32',
    ],
  },
  int64: {
    type: 'validate.Int64Rules',
    allowedNames: [
      'int64',
    ],
  },
  map: {
    type: 'validate.MapRules',
    allowedNames: [
      'map',
    ],
  },
  message: {
    type: 'validate.MessageRules',
    allowedNames: [
      'message',
    ],
  },
  repeated: {
    type: 'validate.RepeatedRules',
    allowedNames: [
      'repeated',
    ],
  },
  sfixed32: {
    type: 'validate.SFixed32Rules',
    allowedNames: [
      'sfixed32',
    ],
  },
  sfixed64: {
    type: 'validate.SFixed64Rules',
    allowedNames: [
      'sfixed64',
    ],
  },
  sint32: {
    type: 'validate.SInt32Rules',
    allowedNames: [
      'sint32',
    ],
  },
  sint64: {
    type: 'validate.SInt64Rules',
    allowedNames: [
      'sint64',
    ],
  },
  string: {
    type: 'validate.StringRules',
    allowedNames: [
      'string',
    ],
  },
  timestamp: {
    type: 'validate.TimestampRules',
    allowedNames: [
      'timestamp',
    ],
  },
  uint32: {
    type: 'validate.UInt32Rules',
    allowedNames: [
      'uint32',
    ],
  },
  uint64: {
    type: 'validate.UInt64Rules',
    allowedNames: [
      'uint64',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'float',
      'double',
      'int32',
      'int64',
      'uint32',
      'uint64',
      'sint32',
      'sint64',
      'fixed32',
      'fixed64',
      'sfixed32',
      'sfixed64',
      'bool',
      'string',
      'bytes',
      'enum',
      'repeated',
      'map',
      'any',
      'duration',
      'timestamp',
    ],
    required: false,
    group: 'type',
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
    withAny:: function(val) validator.validateField(self + { any: val }, 'any', type + '.withAny'),
    withBool:: function(val) validator.validateField(self + { bool: val }, 'bool', type + '.withBool'),
    withBytes:: function(val) validator.validateField(self + { bytes: val }, 'bytes', type + '.withBytes'),
    withDouble:: function(val) validator.validateField(self + { double: val }, 'double', type + '.withDouble'),
    withDuration:: function(val) validator.validateField(self + { duration: val }, 'duration', type + '.withDuration'),
    withEnum:: function(val) validator.validateField(self + { enum: val }, 'enum', type + '.withEnum'),
    withFixed32:: function(val) validator.validateField(self + { fixed32: val }, 'fixed32', type + '.withFixed32'),
    withFixed64:: function(val) validator.validateField(self + { fixed64: val }, 'fixed64', type + '.withFixed64'),
    withFloat:: function(val) validator.validateField(self + { float: val }, 'float', type + '.withFloat'),
    withInt32:: function(val) validator.validateField(self + { int32: val }, 'int32', type + '.withInt32'),
    withInt64:: function(val) validator.validateField(self + { int64: val }, 'int64', type + '.withInt64'),
    withMap:: function(val) validator.validateField(self + { map: val }, 'map', type + '.withMap'),
    withMessage:: function(val) validator.validateField(self + { message: val }, 'message', type + '.withMessage'),
    withRepeated:: function(val) validator.validateField(self + { repeated: val }, 'repeated', type + '.withRepeated'),
    withSfixed32:: function(val) validator.validateField(self + { sfixed32: val }, 'sfixed32', type + '.withSfixed32'),
    withSfixed64:: function(val) validator.validateField(self + { sfixed64: val }, 'sfixed64', type + '.withSfixed64'),
    withSint32:: function(val) validator.validateField(self + { sint32: val }, 'sint32', type + '.withSint32'),
    withSint64:: function(val) validator.validateField(self + { sint64: val }, 'sint64', type + '.withSint64'),
    withString:: function(val) validator.validateField(self + { string: val }, 'string', type + '.withString'),
    withTimestamp:: function(val) validator.validateField(self + { timestamp: val }, 'timestamp', type + '.withTimestamp'),
    withUint32:: function(val) validator.validateField(self + { uint32: val }, 'uint32', type + '.withUint32'),
    withUint64:: function(val) validator.validateField(self + { uint64: val }, 'uint64', type + '.withUint64'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}