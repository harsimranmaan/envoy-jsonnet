// Message type: envoy.config.route.v3.RateLimit.Action.RequestHeaders
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RateLimit.Action.RequestHeaders';
local generator = import '../generator.libsonnet';
local fields = {
  descriptor_key: {
    type: 'string',
    allowedNames: [
      'descriptor_key',
      'descriptorKey',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  header_name: {
    type: 'string',
    allowedNames: [
      'header_name',
      'headerName',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        min_len: 1,
        strict: false,
      },
    },
  },
  skip_if_absent: {
    type: 'bool',
    allowedNames: [
      'skip_if_absent',
      'skipIfAbsent',
    ],
  },
};
local oneOfs = [];
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
    withDescriptorKey:: function(val) validator.validateField(self + { descriptor_key: val }, 'descriptor_key', type + '.withDescriptorKey'),
    withHeaderName:: function(val) validator.validateField(self + { header_name: val }, 'header_name', type + '.withHeaderName'),
    withSkipIfAbsent:: function(val) validator.validateField(self + { skip_if_absent: val }, 'skip_if_absent', type + '.withSkipIfAbsent'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
