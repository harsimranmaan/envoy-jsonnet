// Message type: envoy.config.endpoint.v3.LocalityLbEndpoints
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.endpoint.v3.LocalityLbEndpoints';
local generator = import '../generator.libsonnet';
local fields = {
  lb_endpoints: {
    type: 'envoy.config.endpoint.v3.LbEndpoint',
    allowedNames: [
      'lb_endpoints',
      'lbEndpoints',
    ],
    containerType: 'list',
  },
  leds_cluster_locality_config: {
    type: 'envoy.config.endpoint.v3.LedsClusterLocalityConfig',
    allowedNames: [
      'leds_cluster_locality_config',
      'ledsClusterLocalityConfig',
    ],
  },
  load_balancer_endpoints: {
    type: 'envoy.config.endpoint.v3.LocalityLbEndpoints.LbEndpointList',
    allowedNames: [
      'load_balancer_endpoints',
      'loadBalancerEndpoints',
    ],
  },
  load_balancing_weight: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'load_balancing_weight',
      'loadBalancingWeight',
    ],
    constraints: {
      Uint32: {
        gte: 1,
      },
    },
  },
  locality: {
    type: 'envoy.config.core.v3.Locality',
    allowedNames: [
      'locality',
    ],
  },
  priority: {
    type: 'uint32',
    allowedNames: [
      'priority',
    ],
    constraints: {
      Uint32: {
        lte: 128,
      },
    },
  },
  proximity: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'proximity',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'load_balancer_endpoints',
      'leds_cluster_locality_config',
    ],
    required: false,
    group: 'lb_config',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    LbEndpointList:: (import 'locality-lb-endpoints-lb-endpoint-list.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withLbEndpoints:: function(val) validator.validateField(self + { lb_endpoints: val }, 'lb_endpoints', type + '.withLbEndpoints'),
    withLedsClusterLocalityConfig:: function(val) validator.validateField(self + { leds_cluster_locality_config: val }, 'leds_cluster_locality_config', type + '.withLedsClusterLocalityConfig'),
    withLoadBalancerEndpoints:: function(val) validator.validateField(self + { load_balancer_endpoints: val }, 'load_balancer_endpoints', type + '.withLoadBalancerEndpoints'),
    withLoadBalancingWeight:: function(val) validator.validateField(self + { load_balancing_weight: val }, 'load_balancing_weight', type + '.withLoadBalancingWeight'),
    withLocality:: function(val) validator.validateField(self + { locality: val }, 'locality', type + '.withLocality'),
    withPriority:: function(val) validator.validateField(self + { priority: val }, 'priority', type + '.withPriority'),
    withProximity:: function(val) validator.validateField(self + { proximity: val }, 'proximity', type + '.withProximity'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}