// Message type: envoy.config.route.v3.RouteMatch.TlsContextMatchOptions
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RouteMatch.TlsContextMatchOptions';
local generator = import '../generator.libsonnet';
local fields = {
  presented: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'presented',
    ],
  },
  validated: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'validated',
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
    withPresented:: function(val) validator.validateField(self + { presented: val }, 'presented', type + '.withPresented'),
    withValidated:: function(val) validator.validateField(self + { validated: val }, 'validated', type + '.withValidated'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
