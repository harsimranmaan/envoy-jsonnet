// Message type: envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings';
local generator = import '../generator.libsonnet';
local fields = {
  buffer_flush_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'buffer_flush_timeout',
      'bufferFlushTimeout',
    ],
  },
  dns_cache_config: {
    type: 'envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheConfig',
    allowedNames: [
      'dns_cache_config',
      'dnsCacheConfig',
    ],
  },
  enable_command_stats: {
    type: 'bool',
    allowedNames: [
      'enable_command_stats',
      'enableCommandStats',
    ],
  },
  enable_hashtagging: {
    type: 'bool',
    allowedNames: [
      'enable_hashtagging',
      'enableHashtagging',
    ],
  },
  enable_redirection: {
    type: 'bool',
    allowedNames: [
      'enable_redirection',
      'enableRedirection',
    ],
  },
  max_buffer_size_before_flush: {
    type: 'uint32',
    allowedNames: [
      'max_buffer_size_before_flush',
      'maxBufferSizeBeforeFlush',
    ],
  },
  max_upstream_unknown_connections: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_upstream_unknown_connections',
      'maxUpstreamUnknownConnections',
    ],
  },
  op_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'op_timeout',
      'opTimeout',
    ],
    constraints: {
      Duration: {
        required: true,
      },
    },
  },
  read_policy: {
    type: 'envoy.extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings.ReadPolicy',
    allowedNames: [
      'read_policy',
      'readPolicy',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    ReadPolicy:: (import 'redis-proxy-conn-pool-settings-read-policy.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withBufferFlushTimeout:: function(val) validator.validateField(self + { buffer_flush_timeout: val }, 'buffer_flush_timeout', type + '.withBufferFlushTimeout'),
    withDnsCacheConfig:: function(val) validator.validateField(self + { dns_cache_config: val }, 'dns_cache_config', type + '.withDnsCacheConfig'),
    withEnableCommandStats:: function(val) validator.validateField(self + { enable_command_stats: val }, 'enable_command_stats', type + '.withEnableCommandStats'),
    withEnableHashtagging:: function(val) validator.validateField(self + { enable_hashtagging: val }, 'enable_hashtagging', type + '.withEnableHashtagging'),
    withEnableRedirection:: function(val) validator.validateField(self + { enable_redirection: val }, 'enable_redirection', type + '.withEnableRedirection'),
    withMaxBufferSizeBeforeFlush:: function(val) validator.validateField(self + { max_buffer_size_before_flush: val }, 'max_buffer_size_before_flush', type + '.withMaxBufferSizeBeforeFlush'),
    withMaxUpstreamUnknownConnections:: function(val) validator.validateField(self + { max_upstream_unknown_connections: val }, 'max_upstream_unknown_connections', type + '.withMaxUpstreamUnknownConnections'),
    withOpTimeout:: function(val) validator.validateField(self + { op_timeout: val }, 'op_timeout', type + '.withOpTimeout'),
    withReadPolicy:: function(val) validator.validateField(self + { read_policy: val }, 'read_policy', type + '.withReadPolicy'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}