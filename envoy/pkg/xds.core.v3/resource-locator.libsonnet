// Message type: xds.core.v3.ResourceLocator
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'xds.core.v3.ResourceLocator';
local generator = import '../generator.libsonnet';
local fields = {
  authority: {
    type: 'string',
    allowedNames: [
      'authority',
    ],
  },
  directives: {
    type: 'xds.core.v3.ResourceLocator.Directive',
    allowedNames: [
      'directives',
    ],
    containerType: 'list',
  },
  exact_context: {
    type: 'xds.core.v3.ContextParams',
    allowedNames: [
      'exact_context',
      'exactContext',
    ],
  },
  id: {
    type: 'string',
    allowedNames: [
      'id',
    ],
  },
  resource_type: {
    type: 'string',
    allowedNames: [
      'resource_type',
      'resourceType',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  scheme: {
    type: 'xds.core.v3.ResourceLocator.Scheme',
    allowedNames: [
      'scheme',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
};
local oneOfs = [
  {
    fields: [
      'exact_context',
    ],
    required: false,
    group: 'context_param_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Scheme:: (import 'resource-locator-scheme.libsonnet').definition,
    Directive:: (import 'resource-locator-directive.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withAuthority:: function(val) validator.validateField(self + { authority: val }, 'authority', type + '.withAuthority'),
    withDirectives:: function(val) validator.validateField(self + { directives: val }, 'directives', type + '.withDirectives'),
    withExactContext:: function(val) validator.validateField(self + { exact_context: val }, 'exact_context', type + '.withExactContext'),
    withId:: function(val) validator.validateField(self + { id: val }, 'id', type + '.withId'),
    withResourceType:: function(val) validator.validateField(self + { resource_type: val }, 'resource_type', type + '.withResourceType'),
    withScheme:: function(val) validator.validateField(self + { scheme: val }, 'scheme', type + '.withScheme'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
