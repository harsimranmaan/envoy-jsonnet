// Message type: envoy.config.core.v3.ExtensionConfigSource
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.ExtensionConfigSource';
local generator = import '../generator.libsonnet';
local fields = {
  apply_default_config_without_warming: {
    type: 'bool',
    allowedNames: [
      'apply_default_config_without_warming',
      'applyDefaultConfigWithoutWarming',
    ],
  },
  config_source: {
    type: 'envoy.config.core.v3.ConfigSource',
    allowedNames: [
      'config_source',
      'configSource',
    ],
    constraints: {
      Any: {
        required: true,
      },
    },
  },
  default_config: {
    type: 'google.protobuf.Any',
    allowedNames: [
      'default_config',
      'defaultConfig',
    ],
  },
  type_urls: {
    type: 'string',
    allowedNames: [
      'type_urls',
      'typeUrls',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 1,
      },
    },
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
    withApplyDefaultConfigWithoutWarming:: function(val) validator.validateField(self + { apply_default_config_without_warming: val }, 'apply_default_config_without_warming', type + '.withApplyDefaultConfigWithoutWarming'),
    withConfigSource:: function(val) validator.validateField(self + { config_source: val }, 'config_source', type + '.withConfigSource'),
    withDefaultConfig:: function(val) validator.validateField(self + { default_config: val }, 'default_config', type + '.withDefaultConfig'),
    withTypeUrls:: function(val) validator.validateField(self + { type_urls: val }, 'type_urls', type + '.withTypeUrls'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
