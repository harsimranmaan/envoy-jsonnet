// Message type: envoy.extensions.load_balancing_policies.wrr_locality.v3.WrrLocality
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.load_balancing_policies.wrr_locality.v3.WrrLocality';
local generator = import '../generator.libsonnet';
local fields = {
  endpoint_picking_policy: {
    type: 'envoy.config.cluster.v3.LoadBalancingPolicy',
    allowedNames: [
      'endpoint_picking_policy',
      'endpointPickingPolicy',
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
    withEndpointPickingPolicy:: function(val) validator.validateField(self + { endpoint_picking_policy: val }, 'endpoint_picking_policy', type + '.withEndpointPickingPolicy'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
