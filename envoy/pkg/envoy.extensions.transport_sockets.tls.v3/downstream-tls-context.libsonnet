// Message type: envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext';
local generator = import '../generator.libsonnet';
local fields = {
  common_tls_context: {
    type: 'envoy.extensions.transport_sockets.tls.v3.CommonTlsContext',
    allowedNames: [
      'common_tls_context',
      'commonTlsContext',
    ],
  },
  disable_stateless_session_resumption: {
    type: 'bool',
    allowedNames: [
      'disable_stateless_session_resumption',
      'disableStatelessSessionResumption',
    ],
  },
  full_scan_certs_on_sni_mismatch: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'full_scan_certs_on_sni_mismatch',
      'fullScanCertsOnSniMismatch',
    ],
  },
  ocsp_staple_policy: {
    type: 'envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.OcspStaplePolicy',
    allowedNames: [
      'ocsp_staple_policy',
      'ocspStaplePolicy',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  require_client_certificate: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'require_client_certificate',
      'requireClientCertificate',
    ],
  },
  require_sni: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'require_sni',
      'requireSni',
    ],
  },
  session_ticket_keys: {
    type: 'envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys',
    allowedNames: [
      'session_ticket_keys',
      'sessionTicketKeys',
    ],
  },
  session_ticket_keys_sds_secret_config: {
    type: 'envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig',
    allowedNames: [
      'session_ticket_keys_sds_secret_config',
      'sessionTicketKeysSdsSecretConfig',
    ],
  },
  session_timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'session_timeout',
      'sessionTimeout',
    ],
    constraints: {
      Duration: {
        gte: {},
        lt: {
          seconds: 4294967296,
        },
      },
    },
  },
};
local oneOfs = [
  {
    fields: [
      'session_ticket_keys',
      'session_ticket_keys_sds_secret_config',
      'disable_stateless_session_resumption',
    ],
    required: false,
    group: 'session_ticket_keys_type',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    OcspStaplePolicy:: (import 'downstream-tls-context-ocsp-staple-policy.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withCommonTlsContext:: function(val) validator.validateField(self + { common_tls_context: val }, 'common_tls_context', type + '.withCommonTlsContext'),
    withDisableStatelessSessionResumption:: function(val) validator.validateField(self + { disable_stateless_session_resumption: val }, 'disable_stateless_session_resumption', type + '.withDisableStatelessSessionResumption'),
    withFullScanCertsOnSniMismatch:: function(val) validator.validateField(self + { full_scan_certs_on_sni_mismatch: val }, 'full_scan_certs_on_sni_mismatch', type + '.withFullScanCertsOnSniMismatch'),
    withOcspStaplePolicy:: function(val) validator.validateField(self + { ocsp_staple_policy: val }, 'ocsp_staple_policy', type + '.withOcspStaplePolicy'),
    withRequireClientCertificate:: function(val) validator.validateField(self + { require_client_certificate: val }, 'require_client_certificate', type + '.withRequireClientCertificate'),
    withRequireSni:: function(val) validator.validateField(self + { require_sni: val }, 'require_sni', type + '.withRequireSni'),
    withSessionTicketKeys:: function(val) validator.validateField(self + { session_ticket_keys: val }, 'session_ticket_keys', type + '.withSessionTicketKeys'),
    withSessionTicketKeysSdsSecretConfig:: function(val) validator.validateField(self + { session_ticket_keys_sds_secret_config: val }, 'session_ticket_keys_sds_secret_config', type + '.withSessionTicketKeysSdsSecretConfig'),
    withSessionTimeout:: function(val) validator.validateField(self + { session_timeout: val }, 'session_timeout', type + '.withSessionTimeout'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}