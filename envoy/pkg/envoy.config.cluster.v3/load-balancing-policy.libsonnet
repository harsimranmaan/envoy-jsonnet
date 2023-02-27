// Message type: envoy.config.cluster.v3.LoadBalancingPolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.cluster.v3.LoadBalancingPolicy';
local generator = import '../generator.libsonnet';
local fields = {
  policies: {
    type: 'envoy.config.cluster.v3.LoadBalancingPolicy.Policy',
    allowedNames: [
      'policies',
    ],
    containerType: 'list',
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Policy:: (import 'load-balancing-policy-policy.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withPolicies:: function(val) validator.validateField(self + { policies: val }, 'policies', type + '.withPolicies'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}