// Message type: envoy.config.core.v3.RateLimitSettings
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.RateLimitSettings';
local generator = import '../generator.libsonnet';
local fields = {
  fill_rate: {
    type: 'google.protobuf.DoubleValue',
    allowedNames: [
      'fill_rate',
      'fillRate',
    ],
    constraints: {
      Double: {
        gt: 0,
      },
    },
  },
  max_tokens: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_tokens',
      'maxTokens',
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
    withFillRate:: function(val) validator.validateField(self + { fill_rate: val }, 'fill_rate', type + '.withFillRate'),
    withMaxTokens:: function(val) validator.validateField(self + { max_tokens: val }, 'max_tokens', type + '.withMaxTokens'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
