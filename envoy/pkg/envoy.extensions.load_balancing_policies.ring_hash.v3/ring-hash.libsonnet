// Message type: envoy.extensions.load_balancing_policies.ring_hash.v3.RingHash
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.load_balancing_policies.ring_hash.v3.RingHash';
local generator = import '../generator.libsonnet';
local fields = {
  consistent_hashing_lb_config: {
    type: 'envoy.extensions.load_balancing_policies.common.v3.ConsistentHashingLbConfig',
    allowedNames: [
      'consistent_hashing_lb_config',
      'consistentHashingLbConfig',
    ],
  },
  hash_balance_factor: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'hash_balance_factor',
      'hashBalanceFactor',
    ],
    constraints: {
      Uint32: {
        gte: 100,
      },
    },
  },
  hash_function: {
    type: 'envoy.extensions.load_balancing_policies.ring_hash.v3.RingHash.HashFunction',
    allowedNames: [
      'hash_function',
      'hashFunction',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  maximum_ring_size: {
    type: 'google.protobuf.UInt64Value',
    allowedNames: [
      'maximum_ring_size',
      'maximumRingSize',
    ],
    constraints: {
      Uint64: {
        lte: 8388608,
      },
    },
  },
  minimum_ring_size: {
    type: 'google.protobuf.UInt64Value',
    allowedNames: [
      'minimum_ring_size',
      'minimumRingSize',
    ],
    constraints: {
      Uint64: {
        lte: 8388608,
      },
    },
  },
  use_hostname_for_hashing: {
    type: 'bool',
    allowedNames: [
      'use_hostname_for_hashing',
      'useHostnameForHashing',
    ],
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    HashFunction:: (import 'ring-hash-hash-function.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withConsistentHashingLbConfig:: function(val) validator.validateField(self + { consistent_hashing_lb_config: val }, 'consistent_hashing_lb_config', type + '.withConsistentHashingLbConfig'),
    withHashBalanceFactor:: function(val) validator.validateField(self + { hash_balance_factor: val }, 'hash_balance_factor', type + '.withHashBalanceFactor'),
    withHashFunction:: function(val) validator.validateField(self + { hash_function: val }, 'hash_function', type + '.withHashFunction'),
    withMaximumRingSize:: function(val) validator.validateField(self + { maximum_ring_size: val }, 'maximum_ring_size', type + '.withMaximumRingSize'),
    withMinimumRingSize:: function(val) validator.validateField(self + { minimum_ring_size: val }, 'minimum_ring_size', type + '.withMinimumRingSize'),
    withUseHostnameForHashing:: function(val) validator.validateField(self + { use_hostname_for_hashing: val }, 'use_hostname_for_hashing', type + '.withUseHostnameForHashing'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
