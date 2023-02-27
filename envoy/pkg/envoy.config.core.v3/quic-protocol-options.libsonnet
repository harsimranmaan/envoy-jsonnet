// Message type: envoy.config.core.v3.QuicProtocolOptions
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.QuicProtocolOptions';
local generator = import '../generator.libsonnet';
local fields = {
  connection_keepalive: {
    type: 'envoy.config.core.v3.QuicKeepAliveSettings',
    allowedNames: [
      'connection_keepalive',
      'connectionKeepalive',
    ],
  },
  initial_connection_window_size: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'initial_connection_window_size',
      'initialConnectionWindowSize',
    ],
    constraints: {
      Uint32: {
        gte: 1,
        lte: 25165824,
      },
    },
  },
  initial_stream_window_size: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'initial_stream_window_size',
      'initialStreamWindowSize',
    ],
    constraints: {
      Uint32: {
        gte: 1,
        lte: 16777216,
      },
    },
  },
  max_concurrent_streams: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_concurrent_streams',
      'maxConcurrentStreams',
    ],
    constraints: {
      Uint32: {
        gte: 1,
      },
    },
  },
  num_timeouts_to_trigger_port_migration: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'num_timeouts_to_trigger_port_migration',
      'numTimeoutsToTriggerPortMigration',
    ],
    constraints: {
      Uint32: {
        gte: 0,
        lte: 5,
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
    withConnectionKeepalive:: function(val) validator.validateField(self + { connection_keepalive: val }, 'connection_keepalive', type + '.withConnectionKeepalive'),
    withInitialConnectionWindowSize:: function(val) validator.validateField(self + { initial_connection_window_size: val }, 'initial_connection_window_size', type + '.withInitialConnectionWindowSize'),
    withInitialStreamWindowSize:: function(val) validator.validateField(self + { initial_stream_window_size: val }, 'initial_stream_window_size', type + '.withInitialStreamWindowSize'),
    withMaxConcurrentStreams:: function(val) validator.validateField(self + { max_concurrent_streams: val }, 'max_concurrent_streams', type + '.withMaxConcurrentStreams'),
    withNumTimeoutsToTriggerPortMigration:: function(val) validator.validateField(self + { num_timeouts_to_trigger_port_migration: val }, 'num_timeouts_to_trigger_port_migration', type + '.withNumTimeoutsToTriggerPortMigration'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
