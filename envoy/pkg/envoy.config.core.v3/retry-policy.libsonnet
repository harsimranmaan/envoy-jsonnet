// Message type: envoy.config.core.v3.RetryPolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.RetryPolicy';
local generator = import '../generator.libsonnet';
local fields = {
  num_retries: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'num_retries',
      'numRetries',
    ],
  },
  retry_back_off: {
    type: 'envoy.config.core.v3.BackoffStrategy',
    allowedNames: [
      'retry_back_off',
      'retryBackOff',
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
    withNumRetries:: function(val) validator.validateField(self + { num_retries: val }, 'num_retries', type + '.withNumRetries'),
    withRetryBackOff:: function(val) validator.validateField(self + { retry_back_off: val }, 'retry_back_off', type + '.withRetryBackOff'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}