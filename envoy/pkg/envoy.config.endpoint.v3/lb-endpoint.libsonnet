// Message type: envoy.config.endpoint.v3.LbEndpoint
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.endpoint.v3.LbEndpoint';
local generator = import '../generator.libsonnet';
local fields = {
  endpoint: {
    type: 'envoy.config.endpoint.v3.Endpoint',
    allowedNames: [
      'endpoint',
    ],
  },
  endpoint_name: {
    type: 'string',
    allowedNames: [
      'endpoint_name',
      'endpointName',
    ],
  },
  health_status: {
    type: 'envoy.config.core.v3.HealthStatus',
    allowedNames: [
      'health_status',
      'healthStatus',
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
  metadata: {
    type: 'envoy.config.core.v3.Metadata',
    allowedNames: [
      'metadata',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'endpoint',
      'endpoint_name',
    ],
    required: false,
    group: 'host_identifier',
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
    withEndpoint:: function(val) validator.validateField(self + { endpoint: val }, 'endpoint', type + '.withEndpoint'),
    withEndpointName:: function(val) validator.validateField(self + { endpoint_name: val }, 'endpoint_name', type + '.withEndpointName'),
    withHealthStatus:: function(val) validator.validateField(self + { health_status: val }, 'health_status', type + '.withHealthStatus'),
    withLoadBalancingWeight:: function(val) validator.validateField(self + { load_balancing_weight: val }, 'load_balancing_weight', type + '.withLoadBalancingWeight'),
    withMetadata:: function(val) validator.validateField(self + { metadata: val }, 'metadata', type + '.withMetadata'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}