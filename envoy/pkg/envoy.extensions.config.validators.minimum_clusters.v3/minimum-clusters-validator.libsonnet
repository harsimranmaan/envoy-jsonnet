// Message type: envoy.extensions.config.validators.minimum_clusters.v3.MinimumClustersValidator
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.config.validators.minimum_clusters.v3.MinimumClustersValidator';
local generator = import '../generator.libsonnet';
local fields = {
  min_clusters_num: {
    type: 'uint32',
    allowedNames: [
      'min_clusters_num',
      'minClustersNum',
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
    withMinClustersNum:: function(val) validator.validateField(self + { min_clusters_num: val }, 'min_clusters_num', type + '.withMinClustersNum'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
