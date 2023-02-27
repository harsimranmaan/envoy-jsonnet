// Message type: envoy.config.cluster.v3.TrackClusterStats
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.cluster.v3.TrackClusterStats';
local generator = import '../generator.libsonnet';
local fields = {
  request_response_sizes: {
    type: 'bool',
    allowedNames: [
      'request_response_sizes',
      'requestResponseSizes',
    ],
  },
  timeout_budgets: {
    type: 'bool',
    allowedNames: [
      'timeout_budgets',
      'timeoutBudgets',
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
    withRequestResponseSizes:: function(val) validator.validateField(self + { request_response_sizes: val }, 'request_response_sizes', type + '.withRequestResponseSizes'),
    withTimeoutBudgets:: function(val) validator.validateField(self + { timeout_budgets: val }, 'timeout_budgets', type + '.withTimeoutBudgets'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}