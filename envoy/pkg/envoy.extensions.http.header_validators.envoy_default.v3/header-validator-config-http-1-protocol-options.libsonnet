// Message type: envoy.extensions.http.header_validators.envoy_default.v3.HeaderValidatorConfig.Http1ProtocolOptions
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.http.header_validators.envoy_default.v3.HeaderValidatorConfig.Http1ProtocolOptions';
local generator = import '../generator.libsonnet';
local fields = {
  allow_chunked_length: {
    type: 'bool',
    allowedNames: [
      'allow_chunked_length',
      'allowChunkedLength',
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
    withAllowChunkedLength:: function(val) validator.validateField(self + { allow_chunked_length: val }, 'allow_chunked_length', type + '.withAllowChunkedLength'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
