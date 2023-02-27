// Message type: envoy.type.v3.Int32Range
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.v3.Int32Range';
local generator = import '../generator.libsonnet';
local fields = {
  end: {
    type: 'int32',
    allowedNames: [
      'end',
    ],
  },
  start: {
    type: 'int32',
    allowedNames: [
      'start',
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
    withEnd:: function(val) validator.validateField(self + { end: val }, 'end', type + '.withEnd'),
    withStart:: function(val) validator.validateField(self + { start: val }, 'start', type + '.withStart'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}