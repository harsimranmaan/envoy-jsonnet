// Message type: envoy.type.metadata.v3.MetadataKey
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.metadata.v3.MetadataKey';
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
  path: {
    type: 'envoy.type.metadata.v3.MetadataKey.PathSegment',
    allowedNames: [
      'path',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 1,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    PathSegment:: (import 'metadata-key-path-segment.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withKey:: function(val) validator.validateField(self + { key: val }, 'key', type + '.withKey'),
    withPath:: function(val) validator.validateField(self + { path: val }, 'path', type + '.withPath'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
