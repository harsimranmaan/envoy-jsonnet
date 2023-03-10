// Message type: envoy.config.listener.v3.QuicProtocolOptions
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.listener.v3.QuicProtocolOptions';
local generator = import '../generator.libsonnet';
local fields = {
  connection_id_generator_config: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'connection_id_generator_config',
      'connectionIdGeneratorConfig',
    ],
  },
  crypto_handshake_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'crypto_handshake_timeout',
      'cryptoHandshakeTimeout',
    ],
  },
  crypto_stream_config: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'crypto_stream_config',
      'cryptoStreamConfig',
    ],
  },
  enabled: {
    type: 'envoy.config.core.v3.RuntimeFeatureFlag',
    allowedNames: [
      'enabled',
    ],
  },
  idle_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'idle_timeout',
      'idleTimeout',
    ],
  },
  packets_to_read_to_connection_count_ratio: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'packets_to_read_to_connection_count_ratio',
      'packetsToReadToConnectionCountRatio',
    ],
    constraints: {
      Uint32: {
        gte: 1,
      },
    },
  },
  proof_source_config: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'proof_source_config',
      'proofSourceConfig',
    ],
  },
  quic_protocol_options: {
    type: 'envoy.config.core.v3.QuicProtocolOptions',
    allowedNames: [
      'quic_protocol_options',
      'quicProtocolOptions',
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
    withConnectionIdGeneratorConfig:: function(val) validator.validateField(self + { connection_id_generator_config: val }, 'connection_id_generator_config', type + '.withConnectionIdGeneratorConfig'),
    withCryptoHandshakeTimeout:: function(val) validator.validateField(self + { crypto_handshake_timeout: val }, 'crypto_handshake_timeout', type + '.withCryptoHandshakeTimeout'),
    withCryptoStreamConfig:: function(val) validator.validateField(self + { crypto_stream_config: val }, 'crypto_stream_config', type + '.withCryptoStreamConfig'),
    withEnabled:: function(val) validator.validateField(self + { enabled: val }, 'enabled', type + '.withEnabled'),
    withIdleTimeout:: function(val) validator.validateField(self + { idle_timeout: val }, 'idle_timeout', type + '.withIdleTimeout'),
    withPacketsToReadToConnectionCountRatio:: function(val) validator.validateField(self + { packets_to_read_to_connection_count_ratio: val }, 'packets_to_read_to_connection_count_ratio', type + '.withPacketsToReadToConnectionCountRatio'),
    withProofSourceConfig:: function(val) validator.validateField(self + { proof_source_config: val }, 'proof_source_config', type + '.withProofSourceConfig'),
    withQuicProtocolOptions:: function(val) validator.validateField(self + { quic_protocol_options: val }, 'quic_protocol_options', type + '.withQuicProtocolOptions'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
