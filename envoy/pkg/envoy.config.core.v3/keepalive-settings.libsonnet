// Message type: envoy.config.core.v3.KeepaliveSettings
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.KeepaliveSettings';
local generator = import '../generator.libsonnet';
local fields = {
  connection_idle_interval: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'connection_idle_interval',
      'connectionIdleInterval',
    ],
    constraints: {
      Duration: {
        gte: {
          nanos: 1000000,
        },
      },
    },
  },
  interval: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'interval',
    ],
    constraints: {
      Duration: {
        gte: {
          nanos: 1000000,
        },
      },
    },
  },
  interval_jitter: {
    type: 'envoy.type.v3.Percent',
    allowedNames: [
      'interval_jitter',
      'intervalJitter',
    ],
  },
  timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'timeout',
    ],
    constraints: {
      Duration: {
        gte: {
          nanos: 1000000,
        },
        required: true,
      },
    },
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
    withConnectionIdleInterval:: function(val) validator.validateField(self + { connection_idle_interval: val }, 'connection_idle_interval', type + '.withConnectionIdleInterval'),
    withInterval:: function(val) validator.validateField(self + { interval: val }, 'interval', type + '.withInterval'),
    withIntervalJitter:: function(val) validator.validateField(self + { interval_jitter: val }, 'interval_jitter', type + '.withIntervalJitter'),
    withTimeout:: function(val) validator.validateField(self + { timeout: val }, 'timeout', type + '.withTimeout'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
