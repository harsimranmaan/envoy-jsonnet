// Message type: envoy.extensions.transport_sockets.tls.v3.SubjectAltNameMatcher
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.transport_sockets.tls.v3.SubjectAltNameMatcher';
local generator = import '../generator.libsonnet';
local fields = {
  matcher: {
    type: 'envoy.type.matcher.v3.StringMatcher',
    allowedNames: [
      'matcher',
    ],
    required: true,
  },
  san_type: {
    type: 'envoy.extensions.transport_sockets.tls.v3.SubjectAltNameMatcher.SanType',
    allowedNames: [
      'san_type',
      'sanType',
    ],
    constraints: {
      Enum: {
        defined_only: true,
        not_in: [
          0,
        ],
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    SanType:: (import 'subject-alt-name-matcher-san-type.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withMatcher:: function(val) validator.validateField(self + { matcher: val }, 'matcher', type + '.withMatcher'),
    withSanType:: function(val) validator.validateField(self + { san_type: val }, 'san_type', type + '.withSanType'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}