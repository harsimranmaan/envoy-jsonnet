// Message type: envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfig';
local generator = import '../generator.libsonnet';
local fields = {
  content_type: {
    type: 'string',
    allowedNames: [
      'content_type',
      'contentType',
    ],
    containerType: 'list',
  },
  enabled: {
    type: 'envoy.config.core.v3.RuntimeFeatureFlag',
    allowedNames: [
      'enabled',
    ],
  },
  min_content_length: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'min_content_length',
      'minContentLength',
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
    withContentType:: function(val) validator.validateField(self + { content_type: val }, 'content_type', type + '.withContentType'),
    withEnabled:: function(val) validator.validateField(self + { enabled: val }, 'enabled', type + '.withEnabled'),
    withMinContentLength:: function(val) validator.validateField(self + { min_content_length: val }, 'min_content_length', type + '.withMinContentLength'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
