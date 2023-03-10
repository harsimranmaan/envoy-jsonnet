// Message type: envoy.config.route.v3.RouteAction.RequestMirrorPolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RouteAction.RequestMirrorPolicy';
local generator = import '../generator.libsonnet';
local fields = {
  cluster: {
    type: 'string',
    allowedNames: [
      'cluster',
    ],
  },
  cluster_header: {
    type: 'string',
    allowedNames: [
      'cluster_header',
      'clusterHeader',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        strict: false,
      },
    },
  },
  runtime_fraction: {
    type: 'envoy.config.core.v3.RuntimeFractionalPercent',
    allowedNames: [
      'runtime_fraction',
      'runtimeFraction',
    ],
  },
  trace_sampled: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'trace_sampled',
      'traceSampled',
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
    withCluster:: function(val) validator.validateField(self + { cluster: val }, 'cluster', type + '.withCluster'),
    withClusterHeader:: function(val) validator.validateField(self + { cluster_header: val }, 'cluster_header', type + '.withClusterHeader'),
    withRuntimeFraction:: function(val) validator.validateField(self + { runtime_fraction: val }, 'runtime_fraction', type + '.withRuntimeFraction'),
    withTraceSampled:: function(val) validator.validateField(self + { trace_sampled: val }, 'trace_sampled', type + '.withTraceSampled'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
