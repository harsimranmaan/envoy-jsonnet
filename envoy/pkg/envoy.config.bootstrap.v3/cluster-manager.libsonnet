// Message type: envoy.config.bootstrap.v3.ClusterManager
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.bootstrap.v3.ClusterManager';
local generator = import '../generator.libsonnet';
local fields = {
  load_stats_config: {
    type: 'envoy.config.core.v3.ApiConfigSource',
    allowedNames: [
      'load_stats_config',
      'loadStatsConfig',
    ],
  },
  local_cluster_name: {
    type: 'string',
    allowedNames: [
      'local_cluster_name',
      'localClusterName',
    ],
  },
  outlier_detection: {
    type: 'envoy.config.bootstrap.v3.ClusterManager.OutlierDetection',
    allowedNames: [
      'outlier_detection',
      'outlierDetection',
    ],
  },
  upstream_bind_config: {
    type: 'envoy.config.core.v3.BindConfig',
    allowedNames: [
      'upstream_bind_config',
      'upstreamBindConfig',
    ],
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    OutlierDetection:: (import 'cluster-manager-outlier-detection.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withLoadStatsConfig:: function(val) validator.validateField(self + { load_stats_config: val }, 'load_stats_config', type + '.withLoadStatsConfig'),
    withLocalClusterName:: function(val) validator.validateField(self + { local_cluster_name: val }, 'local_cluster_name', type + '.withLocalClusterName'),
    withOutlierDetection:: function(val) validator.validateField(self + { outlier_detection: val }, 'outlier_detection', type + '.withOutlierDetection'),
    withUpstreamBindConfig:: function(val) validator.validateField(self + { upstream_bind_config: val }, 'upstream_bind_config', type + '.withUpstreamBindConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
