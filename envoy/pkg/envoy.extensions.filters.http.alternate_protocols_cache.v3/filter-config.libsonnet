// Message type: envoy.extensions.filters.http.alternate_protocols_cache.v3.FilterConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.alternate_protocols_cache.v3.FilterConfig';
local generator = import '../generator.libsonnet';
local fields = {
  alternate_protocols_cache_options: {
    type: 'envoy.config.core.v3.AlternateProtocolsCacheOptions',
    allowedNames: [
      'alternate_protocols_cache_options',
      'alternateProtocolsCacheOptions',
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
    withAlternateProtocolsCacheOptions:: function(val) validator.validateField(self + { alternate_protocols_cache_options: val }, 'alternate_protocols_cache_options', type + '.withAlternateProtocolsCacheOptions'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}