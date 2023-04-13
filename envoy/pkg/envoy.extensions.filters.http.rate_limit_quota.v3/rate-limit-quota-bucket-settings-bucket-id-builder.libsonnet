// Message type: envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.BucketIdBuilder
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.BucketIdBuilder';
local generator = import '../generator.libsonnet';
local fields = {
  bucket_id_builder: {
    type: 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.BucketIdBuilder.ValueBuilder',
    allowedNames: [
      'bucket_id_builder',
      'bucketIdBuilder',
    ],
    containerType: 'map',
    required: true,
    constraints: {
      Map: {
        min_pairs: 1,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    ValueBuilder:: (import 'rate-limit-quota-bucket-settings-bucket-id-builder-value-builder.libsonnet').definition,
    BucketIdBuilderEntry:: (import 'rate-limit-quota-bucket-settings-bucket-id-builder-bucket-id-builder-entry.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withBucketIdBuilder:: function(val) validator.validateField(self + { bucket_id_builder: val }, 'bucket_id_builder', type + '.withBucketIdBuilder'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}