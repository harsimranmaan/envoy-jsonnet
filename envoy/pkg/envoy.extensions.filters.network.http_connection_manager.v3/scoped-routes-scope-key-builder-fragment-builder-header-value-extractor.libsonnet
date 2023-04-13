// Message type: envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor';
local generator = import '../generator.libsonnet';
local fields = {
  element: {
    type: 'envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement',
    allowedNames: [
      'element',
    ],
  },
  element_separator: {
    type: 'string',
    allowedNames: [
      'element_separator',
      'elementSeparator',
    ],
  },
  index: {
    type: 'uint32',
    allowedNames: [
      'index',
    ],
  },
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
};
local oneOfs = [
  {
    fields: [
      'index',
      'element',
    ],
    required: false,
    group: 'extract_type',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    KvElement:: (import 'scoped-routes-scope-key-builder-fragment-builder-header-value-extractor-kv-element.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withElement:: function(val) validator.validateField(self + { element: val }, 'element', type + '.withElement'),
    withElementSeparator:: function(val) validator.validateField(self + { element_separator: val }, 'element_separator', type + '.withElementSeparator'),
    withIndex:: function(val) validator.validateField(self + { index: val }, 'index', type + '.withIndex'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}