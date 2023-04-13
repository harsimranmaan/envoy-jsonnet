// Message type: envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement';
local generator = import '../generator.libsonnet';
local fields = {
  key: {
    type: 'string',
    allowedNames: [
      'key',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  separator: {
    type: 'string',
    allowedNames: [
      'separator',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
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
    withKey:: function(val) validator.validateField(self + { key: val }, 'key', type + '.withKey'),
    withSeparator:: function(val) validator.validateField(self + { separator: val }, 'separator', type + '.withSeparator'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
