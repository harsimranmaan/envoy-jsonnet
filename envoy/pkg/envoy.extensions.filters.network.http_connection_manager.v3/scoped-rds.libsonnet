// Message type: envoy.extensions.filters.network.http_connection_manager.v3.ScopedRds
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.http_connection_manager.v3.ScopedRds';
local generator = import '../generator.libsonnet';
local fields = {
  scoped_rds_config_source: {
    type: 'envoy.config.core.v3.ConfigSource',
    allowedNames: [
      'scoped_rds_config_source',
      'scopedRdsConfigSource',
    ],
    required: true,
  },
  srds_resources_locator: {
    type: 'string',
    allowedNames: [
      'srds_resources_locator',
      'srdsResourcesLocator',
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
    withScopedRdsConfigSource:: function(val) validator.validateField(self + { scoped_rds_config_source: val }, 'scoped_rds_config_source', type + '.withScopedRdsConfigSource'),
    withSrdsResourcesLocator:: function(val) validator.validateField(self + { srds_resources_locator: val }, 'srds_resources_locator', type + '.withSrdsResourcesLocator'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
