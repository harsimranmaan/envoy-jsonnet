// Message type: envoy.extensions.load_balancing_policies.client_side_weighted_round_robin.v3.ClientSideWeightedRoundRobin
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.load_balancing_policies.client_side_weighted_round_robin.v3.ClientSideWeightedRoundRobin';
local generator = import '../generator.libsonnet';
local fields = {
  blackout_period: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'blackout_period',
      'blackoutPeriod',
    ],
  },
  enable_oob_load_report: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'enable_oob_load_report',
      'enableOobLoadReport',
    ],
  },
  oob_reporting_period: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'oob_reporting_period',
      'oobReportingPeriod',
    ],
  },
  weight_expiration_period: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'weight_expiration_period',
      'weightExpirationPeriod',
    ],
  },
  weight_update_period: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'weight_update_period',
      'weightUpdatePeriod',
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
    withBlackoutPeriod:: function(val) validator.validateField(self + { blackout_period: val }, 'blackout_period', type + '.withBlackoutPeriod'),
    withEnableOobLoadReport:: function(val) validator.validateField(self + { enable_oob_load_report: val }, 'enable_oob_load_report', type + '.withEnableOobLoadReport'),
    withOobReportingPeriod:: function(val) validator.validateField(self + { oob_reporting_period: val }, 'oob_reporting_period', type + '.withOobReportingPeriod'),
    withWeightExpirationPeriod:: function(val) validator.validateField(self + { weight_expiration_period: val }, 'weight_expiration_period', type + '.withWeightExpirationPeriod'),
    withWeightUpdatePeriod:: function(val) validator.validateField(self + { weight_update_period: val }, 'weight_update_period', type + '.withWeightUpdatePeriod'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}