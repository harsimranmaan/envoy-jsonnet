// Message type: envoy.type.http.v3.Cookie
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.http.v3.Cookie';
local generator = import '../generator.libsonnet';
local fields = {
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  path: {
    type: 'string',
    allowedNames: [
      'path',
    ],
  },
  ttl: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'ttl',
    ],
    constraints: {
      Duration: {
        gte: {},
      },
    },
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
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withPath:: function(val) validator.validateField(self + { path: val }, 'path', type + '.withPath'),
    withTtl:: function(val) validator.validateField(self + { ttl: val }, 'ttl', type + '.withTtl'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
