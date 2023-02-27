// Message type: xds.type.matcher.v3.Matcher.OnMatch
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'xds.type.matcher.v3.Matcher.OnMatch';
local generator = import '../generator.libsonnet';
local fields = {
  action: {
    type: 'xds.core.v3.TypedExtensionConfig',
    allowedNames: [
      'action',
    ],
  },
  matcher: {
    type: 'xds.type.matcher.v3.Matcher',
    allowedNames: [
      'matcher',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'matcher',
      'action',
    ],
    required: true,
    group: 'on_match',
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
    withAction:: function(val) validator.validateField(self + { action: val }, 'action', type + '.withAction'),
    withMatcher:: function(val) validator.validateField(self + { matcher: val }, 'matcher', type + '.withMatcher'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}