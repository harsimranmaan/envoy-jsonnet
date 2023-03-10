// Message type: envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials';
local generator = import '../generator.libsonnet';
local fields = {
  cert_chain: {
    type: 'envoy.config.core.v3.DataSource',
    allowedNames: [
      'cert_chain',
      'certChain',
    ],
  },
  private_key: {
    type: 'envoy.config.core.v3.DataSource',
    allowedNames: [
      'private_key',
      'privateKey',
    ],
  },
  root_certs: {
    type: 'envoy.config.core.v3.DataSource',
    allowedNames: [
      'root_certs',
      'rootCerts',
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
    withCertChain:: function(val) validator.validateField(self + { cert_chain: val }, 'cert_chain', type + '.withCertChain'),
    withPrivateKey:: function(val) validator.validateField(self + { private_key: val }, 'private_key', type + '.withPrivateKey'),
    withRootCerts:: function(val) validator.validateField(self + { root_certs: val }, 'root_certs', type + '.withRootCerts'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
