// Message type: envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateList
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateList';
local generator = import '../generator.libsonnet';
local fields = {
  predicate: {
    type: 'envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate',
    allowedNames: [
      'predicate',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 2,
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
    withPredicate:: function(val) validator.validateField(self + { predicate: val }, 'predicate', type + '.withPredicate'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}