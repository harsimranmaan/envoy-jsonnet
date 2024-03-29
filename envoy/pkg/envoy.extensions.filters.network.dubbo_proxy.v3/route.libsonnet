// Message type: envoy.extensions.filters.network.dubbo_proxy.v3.Route
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.dubbo_proxy.v3.Route';
local generator = import '../generator.libsonnet';
local fields = {
  match: {
    type: 'envoy.extensions.filters.network.dubbo_proxy.v3.RouteMatch',
    allowedNames: [
      'match',
    ],
    required: true,
  },
  route: {
    type: 'envoy.extensions.filters.network.dubbo_proxy.v3.RouteAction',
    allowedNames: [
      'route',
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
    withMatch:: function(val) validator.validateField(self + { match: val }, 'match', type + '.withMatch'),
    withRoute:: function(val) validator.validateField(self + { route: val }, 'route', type + '.withRoute'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
