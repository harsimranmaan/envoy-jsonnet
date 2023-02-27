// Message type: envoy.config.accesslog.v3.HeaderFilter
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.accesslog.v3.HeaderFilter';
local generator = import '../generator.libsonnet';
local fields = {
  header: {
    type: 'envoy.config.route.v3.HeaderMatcher',
    allowedNames: [
      'header',
    ],
    required: true,
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
    withHeader:: function(val) validator.validateField(self + { header: val }, 'header', type + '.withHeader'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}