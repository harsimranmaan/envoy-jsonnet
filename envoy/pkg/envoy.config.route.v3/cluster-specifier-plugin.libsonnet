// Message type: envoy.config.route.v3.ClusterSpecifierPlugin
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.ClusterSpecifierPlugin';
local generator = import '../generator.libsonnet';
local fields = {
  extension: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'extension',
    ],
    required: true,
  },
  is_optional: {
    type: 'bool',
    allowedNames: [
      'is_optional',
      'isOptional',
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
    withExtension:: function(val) validator.validateField(self + { extension: val }, 'extension', type + '.withExtension'),
    withIsOptional:: function(val) validator.validateField(self + { is_optional: val }, 'is_optional', type + '.withIsOptional'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}