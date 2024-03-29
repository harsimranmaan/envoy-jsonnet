// Message type: envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContext
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContext';
local generator = import '../generator.libsonnet';
local fields = {
  default_validation_context: {
    type: 'envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext',
    allowedNames: [
      'default_validation_context',
      'defaultValidationContext',
    ],
    required: true,
  },
  validation_context_certificate_provider: {
    type: 'envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProvider',
    allowedNames: [
      'validation_context_certificate_provider',
      'validationContextCertificateProvider',
    ],
  },
  validation_context_certificate_provider_instance: {
    type: 'envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstance',
    allowedNames: [
      'validation_context_certificate_provider_instance',
      'validationContextCertificateProviderInstance',
    ],
  },
  validation_context_sds_secret_config: {
    type: 'envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig',
    allowedNames: [
      'validation_context_sds_secret_config',
      'validationContextSdsSecretConfig',
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
    withDefaultValidationContext:: function(val) validator.validateField(self + { default_validation_context: val }, 'default_validation_context', type + '.withDefaultValidationContext'),
    withValidationContextCertificateProvider:: function(val) validator.validateField(self + { validation_context_certificate_provider: val }, 'validation_context_certificate_provider', type + '.withValidationContextCertificateProvider'),
    withValidationContextCertificateProviderInstance:: function(val) validator.validateField(self + { validation_context_certificate_provider_instance: val }, 'validation_context_certificate_provider_instance', type + '.withValidationContextCertificateProviderInstance'),
    withValidationContextSdsSecretConfig:: function(val) validator.validateField(self + { validation_context_sds_secret_config: val }, 'validation_context_sds_secret_config', type + '.withValidationContextSdsSecretConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
