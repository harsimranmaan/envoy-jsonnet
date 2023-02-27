// Message type: envoy.config.cluster.v3.Cluster.RoundRobinLbConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.cluster.v3.Cluster.RoundRobinLbConfig';
local generator = import '../generator.libsonnet';
local fields = {
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
    withSlowStartConfig:: function(val) validator.validateField(self + { slow_start_config: val }, 'slow_start_config', type + '.withSlowStartConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}