// Message type: envoy.config.core.v3.PathConfigSource
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.PathConfigSource';
local generator = import '../generator.libsonnet';
local fields = {
  path: {
    type: 'string',
    allowedNames: [
      'path',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  watched_directory: {
    type: 'envoy.config.core.v3.WatchedDirectory',
    allowedNames: [
      'watched_directory',
      'watchedDirectory',
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
    withPath:: function(val) validator.validateField(self + { path: val }, 'path', type + '.withPath'),
    withWatchedDirectory:: function(val) validator.validateField(self + { watched_directory: val }, 'watched_directory', type + '.withWatchedDirectory'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
