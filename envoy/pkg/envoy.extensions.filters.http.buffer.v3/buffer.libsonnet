// Message type: envoy.extensions.filters.http.buffer.v3.Buffer
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.buffer.v3.Buffer';
local generator = import '../generator.libsonnet';
local fields = {
  max_request_bytes: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_request_bytes',
      'maxRequestBytes',
    ],
    required: true,
    constraints: {
      Uint32: {
        gt: 0,
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
    withMaxRequestBytes:: function(val) validator.validateField(self + { max_request_bytes: val }, 'max_request_bytes', type + '.withMaxRequestBytes'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
