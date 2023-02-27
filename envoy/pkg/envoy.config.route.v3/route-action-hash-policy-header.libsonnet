// Message type: envoy.config.route.v3.RouteAction.HashPolicy.Header
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RouteAction.HashPolicy.Header';
local generator = import '../generator.libsonnet';
local fields = {
  header_name: {
    type: 'string',
    allowedNames: [
      'header_name',
      'headerName',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        min_len: 1,
        strict: false,
      },
    },
  },
  regex_rewrite: {
    type: 'envoy.type.matcher.v3.RegexMatchAndSubstitute',
    allowedNames: [
      'regex_rewrite',
      'regexRewrite',
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
    withHeaderName:: function(val) validator.validateField(self + { header_name: val }, 'header_name', type + '.withHeaderName'),
    withRegexRewrite:: function(val) validator.validateField(self + { regex_rewrite: val }, 'regex_rewrite', type + '.withRegexRewrite'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
