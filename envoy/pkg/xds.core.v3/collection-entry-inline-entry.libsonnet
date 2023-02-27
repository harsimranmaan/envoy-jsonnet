// Message type: xds.core.v3.CollectionEntry.InlineEntry
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'xds.core.v3.CollectionEntry.InlineEntry';
local generator = import '../generator.libsonnet';
local fields = {
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        pattern: '^[0-9a-zA-Z_\\-\\.~:]+$',
      },
    },
  },
  resource: {
    type: 'google.protobuf.Any',
    allowedNames: [
      'resource',
    ],
  },
  version: {
    type: 'string',
    allowedNames: [
      'version',
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
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withResource:: function(val) validator.validateField(self + { resource: val }, 'resource', type + '.withResource'),
    withVersion:: function(val) validator.validateField(self + { version: val }, 'version', type + '.withVersion'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}