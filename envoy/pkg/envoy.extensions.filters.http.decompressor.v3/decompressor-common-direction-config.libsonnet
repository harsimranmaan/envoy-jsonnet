// Message type: envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfig';
local generator = import '../generator.libsonnet';
local fields = {
  enabled: {
    type: 'envoy.config.core.v3.RuntimeFeatureFlag',
    allowedNames: [
      'enabled',
    ],
  },
  ignore_no_transform_header: {
    type: 'bool',
    allowedNames: [
      'ignore_no_transform_header',
      'ignoreNoTransformHeader',
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
    withEnabled:: function(val) validator.validateField(self + { enabled: val }, 'enabled', type + '.withEnabled'),
    withIgnoreNoTransformHeader:: function(val) validator.validateField(self + { ignore_no_transform_header: val }, 'ignore_no_transform_header', type + '.withIgnoreNoTransformHeader'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
