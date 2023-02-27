// Message type: envoy.config.cluster.v3.Cluster.LeastRequestLbConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.cluster.v3.Cluster.LeastRequestLbConfig';
local generator = import '../generator.libsonnet';
local fields = {
  active_request_bias: {
    type: 'envoy.config.core.v3.RuntimeDouble',
    allowedNames: [
      'active_request_bias',
      'activeRequestBias',
    ],
  },
  choice_count: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'choice_count',
      'choiceCount',
    ],
    constraints: {
      Uint32: {
        gte: 2,
      },
    },
  },
  slow_start_config: {
    type: 'envoy.config.cluster.v3.Cluster.SlowStartConfig',
    allowedNames: [
      'slow_start_config',
      'slowStartConfig',
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
    withActiveRequestBias:: function(val) validator.validateField(self + { active_request_bias: val }, 'active_request_bias', type + '.withActiveRequestBias'),
    withChoiceCount:: function(val) validator.validateField(self + { choice_count: val }, 'choice_count', type + '.withChoiceCount'),
    withSlowStartConfig:: function(val) validator.validateField(self + { slow_start_config: val }, 'slow_start_config', type + '.withSlowStartConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}