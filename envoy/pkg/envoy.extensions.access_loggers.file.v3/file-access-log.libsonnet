// Message type: envoy.extensions.access_loggers.file.v3.FileAccessLog
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.access_loggers.file.v3.FileAccessLog';
local generator = import '../generator.libsonnet';
local fields = {
  format: {
    type: 'string',
    allowedNames: [
      'format',
    ],
  },
  json_format: {
    type: 'google.protobuf.Struct',
    allowedNames: [
      'json_format',
      'jsonFormat',
    ],
  },
  log_format: {
    type: 'envoy.config.core.v3.SubstitutionFormatString',
    allowedNames: [
      'log_format',
      'logFormat',
    ],
  },
  path: {
    type: 'string',
    allowedNames: [
      'path',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  typed_json_format: {
    type: 'google.protobuf.Struct',
    allowedNames: [
      'typed_json_format',
      'typedJsonFormat',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'format',
      'json_format',
      'typed_json_format',
      'log_format',
    ],
    required: false,
    group: 'access_log_format',
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
    withFormat:: function(val) validator.validateField(self + { format: val }, 'format', type + '.withFormat'),
    withJsonFormat:: function(val) validator.validateField(self + { json_format: val }, 'json_format', type + '.withJsonFormat'),
    withLogFormat:: function(val) validator.validateField(self + { log_format: val }, 'log_format', type + '.withLogFormat'),
    withPath:: function(val) validator.validateField(self + { path: val }, 'path', type + '.withPath'),
    withTypedJsonFormat:: function(val) validator.validateField(self + { typed_json_format: val }, 'typed_json_format', type + '.withTypedJsonFormat'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
