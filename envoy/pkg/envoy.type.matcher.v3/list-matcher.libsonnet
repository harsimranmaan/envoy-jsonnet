// Message type: envoy.type.matcher.v3.ListMatcher
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.matcher.v3.ListMatcher';
local generator = import '../generator.libsonnet';
local fields = {
  one_of: {
    type: 'envoy.type.matcher.v3.ValueMatcher',
    allowedNames: [
      'one_of',
      'oneOf',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'one_of',
    ],
    required: true,
    group: 'match_pattern',
  },
];
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
    withOneOf:: function(val) validator.validateField(self + { one_of: val }, 'one_of', type + '.withOneOf'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
