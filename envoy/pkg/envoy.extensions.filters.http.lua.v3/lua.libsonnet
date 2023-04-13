// Message type: envoy.extensions.filters.http.lua.v3.Lua
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.lua.v3.Lua';
local generator = import '../generator.libsonnet';
local fields = {
  default_source_code: {
    type: 'envoy.config.core.v3.DataSource',
    allowedNames: [
      'default_source_code',
      'defaultSourceCode',
    ],
  },
  inline_code: {
    type: 'string',
    allowedNames: [
      'inline_code',
      'inlineCode',
    ],
  },
  source_codes: {
    type: 'envoy.config.core.v3.DataSource',
    allowedNames: [
      'source_codes',
      'sourceCodes',
    ],
    containerType: 'map',
  },
  stat_prefix: {
    type: 'string',
    allowedNames: [
      'stat_prefix',
      'statPrefix',
    ],
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    SourceCodesEntry:: (import 'lua-source-codes-entry.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withDefaultSourceCode:: function(val) validator.validateField(self + { default_source_code: val }, 'default_source_code', type + '.withDefaultSourceCode'),
    withInlineCode:: function(val) validator.validateField(self + { inline_code: val }, 'inline_code', type + '.withInlineCode'),
    withSourceCodes:: function(val) validator.validateField(self + { source_codes: val }, 'source_codes', type + '.withSourceCodes'),
    withStatPrefix:: function(val) validator.validateField(self + { stat_prefix: val }, 'stat_prefix', type + '.withStatPrefix'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
