// Message type: xds.type.matcher.v3.ListStringMatcher
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'xds.type.matcher.v3.ListStringMatcher';
local generator = import '../generator.libsonnet';
local fields = {
  patterns: {
    type: 'xds.type.matcher.v3.StringMatcher',
    allowedNames: [
      'patterns',
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

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withPatterns:: function(val) validator.validateField(self + { patterns: val }, 'patterns', type + '.withPatterns'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}