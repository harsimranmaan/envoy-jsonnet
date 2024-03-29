// Message type: envoy.extensions.filters.http.compressor.v3.CompressorOverrides
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.compressor.v3.CompressorOverrides';
local generator = import '../generator.libsonnet';
local fields = {
  response_direction_config: {
    type: 'envoy.extensions.filters.http.compressor.v3.ResponseDirectionOverrides',
    allowedNames: [
      'response_direction_config',
      'responseDirectionConfig',
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
    withResponseDirectionConfig:: function(val) validator.validateField(self + { response_direction_config: val }, 'response_direction_config', type + '.withResponseDirectionConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
