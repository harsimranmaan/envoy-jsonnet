// Message type: xds.type.matcher.v3.Matcher.MatcherList.Predicate.SinglePredicate
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'xds.type.matcher.v3.Matcher.MatcherList.Predicate.SinglePredicate';
local generator = import '../generator.libsonnet';
local fields = {
  custom_match: {
    type: 'xds.core.v3.TypedExtensionConfig',
    allowedNames: [
      'custom_match',
      'customMatch',
    ],
  },
  input: {
    type: 'xds.core.v3.TypedExtensionConfig',
    allowedNames: [
      'input',
    ],
    required: true,
  },
  value_match: {
    type: 'xds.type.matcher.v3.StringMatcher',
    allowedNames: [
      'value_match',
      'valueMatch',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'value_match',
      'custom_match',
    ],
    required: true,
    group: 'matcher',
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
    withCustomMatch:: function(val) validator.validateField(self + { custom_match: val }, 'custom_match', type + '.withCustomMatch'),
    withInput:: function(val) validator.validateField(self + { input: val }, 'input', type + '.withInput'),
    withValueMatch:: function(val) validator.validateField(self + { value_match: val }, 'value_match', type + '.withValueMatch'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}