// Message type: envoy.config.metrics.v3.HystrixSink
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.metrics.v3.HystrixSink';
local generator = import '../generator.libsonnet';
local fields = {
  num_buckets: {
    type: 'int64',
    allowedNames: [
      'num_buckets',
      'numBuckets',
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
    withNumBuckets:: function(val) validator.validateField(self + { num_buckets: val }, 'num_buckets', type + '.withNumBuckets'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
