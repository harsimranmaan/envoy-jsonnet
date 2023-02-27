// Message type: envoy.type.matcher.v3.RegexMatchAndSubstitute
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.matcher.v3.RegexMatchAndSubstitute';
local generator = import '../generator.libsonnet';
local fields = {
  pattern: {
    type: 'envoy.type.matcher.v3.RegexMatcher',
    allowedNames: [
      'pattern',
    ],
    required: true,
  },
  substitution: {
    type: 'string',
    allowedNames: [
      'substitution',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 2,
        },
        strict: false,
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
    withPattern:: function(val) validator.validateField(self + { pattern: val }, 'pattern', type + '.withPattern'),
    withSubstitution:: function(val) validator.validateField(self + { substitution: val }, 'substitution', type + '.withSubstitution'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
