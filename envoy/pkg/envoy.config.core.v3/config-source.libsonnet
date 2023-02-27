// Message type: envoy.config.core.v3.ConfigSource
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.ConfigSource';
local generator = import '../generator.libsonnet';
local fields = {
  ads: {
    type: 'envoy.config.core.v3.AggregatedConfigSource',
    allowedNames: [
      'ads',
    ],
  },
  api_config_source: {
    type: 'envoy.config.core.v3.ApiConfigSource',
    allowedNames: [
      'api_config_source',
      'apiConfigSource',
    ],
  },
  authorities: {
    type: 'xds.core.v3.Authority',
    allowedNames: [
      'authorities',
    ],
    containerType: 'list',
  },
  initial_fetch_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'initial_fetch_timeout',
      'initialFetchTimeout',
    ],
  },
  path: {
    type: 'string',
    allowedNames: [
      'path',
    ],
  },
  path_config_source: {
    type: 'envoy.config.core.v3.PathConfigSource',
    allowedNames: [
      'path_config_source',
      'pathConfigSource',
    ],
  },
  resource_api_version: {
    type: 'envoy.config.core.v3.ApiVersion',
    allowedNames: [
      'resource_api_version',
      'resourceApiVersion',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  'self': {
    type: 'envoy.config.core.v3.SelfConfigSource',
    allowedNames: [
      'self',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'path',
      'path_config_source',
      'api_config_source',
      'ads',
      'self',
    ],
    required: true,
    group: 'config_source_specifier',
  },
];
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
    withAds:: function(val) validator.validateField(self + { ads: val }, 'ads', type + '.withAds'),
    withApiConfigSource:: function(val) validator.validateField(self + { api_config_source: val }, 'api_config_source', type + '.withApiConfigSource'),
    withAuthorities:: function(val) validator.validateField(self + { authorities: val }, 'authorities', type + '.withAuthorities'),
    withInitialFetchTimeout:: function(val) validator.validateField(self + { initial_fetch_timeout: val }, 'initial_fetch_timeout', type + '.withInitialFetchTimeout'),
    withPath:: function(val) validator.validateField(self + { path: val }, 'path', type + '.withPath'),
    withPathConfigSource:: function(val) validator.validateField(self + { path_config_source: val }, 'path_config_source', type + '.withPathConfigSource'),
    withResourceApiVersion:: function(val) validator.validateField(self + { resource_api_version: val }, 'resource_api_version', type + '.withResourceApiVersion'),
    withSelf:: function(val) validator.validateField(self + { 'self': val }, 'self', type + '.withSelf'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}