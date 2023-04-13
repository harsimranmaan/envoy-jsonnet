// Message type: envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings';
local generator = import '../generator.libsonnet';
local fields = {
  bucket_id_builder: {
    type: 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.BucketIdBuilder',
    allowedNames: [
      'bucket_id_builder',
      'bucketIdBuilder',
    ],
  },
  deny_response_settings: {
    type: 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.DenyResponseSettings',
    allowedNames: [
      'deny_response_settings',
      'denyResponseSettings',
    ],
  },
  expired_assignment_behavior: {
    type: 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.ExpiredAssignmentBehavior',
    allowedNames: [
      'expired_assignment_behavior',
      'expiredAssignmentBehavior',
    ],
  },
  no_assignment_behavior: {
    type: 'envoy.extensions.filters.http.rate_limit_quota.v3.RateLimitQuotaBucketSettings.NoAssignmentBehavior',
    allowedNames: [
      'no_assignment_behavior',
      'noAssignmentBehavior',
    ],
  },
  reporting_interval: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'reporting_interval',
      'reportingInterval',
    ],
    constraints: {
      Duration: {
        gt: {
          nanos: 100000000,
        },
        required: true,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    NoAssignmentBehavior:: (import 'rate-limit-quota-bucket-settings-no-assignment-behavior.libsonnet').definition,
    ExpiredAssignmentBehavior:: (import 'rate-limit-quota-bucket-settings-expired-assignment-behavior.libsonnet').definition,
    DenyResponseSettings:: (import 'rate-limit-quota-bucket-settings-deny-response-settings.libsonnet').definition,
    BucketIdBuilder:: (import 'rate-limit-quota-bucket-settings-bucket-id-builder.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withBucketIdBuilder:: function(val) validator.validateField(self + { bucket_id_builder: val }, 'bucket_id_builder', type + '.withBucketIdBuilder'),
    withDenyResponseSettings:: function(val) validator.validateField(self + { deny_response_settings: val }, 'deny_response_settings', type + '.withDenyResponseSettings'),
    withExpiredAssignmentBehavior:: function(val) validator.validateField(self + { expired_assignment_behavior: val }, 'expired_assignment_behavior', type + '.withExpiredAssignmentBehavior'),
    withNoAssignmentBehavior:: function(val) validator.validateField(self + { no_assignment_behavior: val }, 'no_assignment_behavior', type + '.withNoAssignmentBehavior'),
    withReportingInterval:: function(val) validator.validateField(self + { reporting_interval: val }, 'reporting_interval', type + '.withReportingInterval'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}