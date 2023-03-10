// Enum type: envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.TrustChainVerification
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.
local type = 'envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.TrustChainVerification';
local map = {
  ACCEPT_UNTRUSTED: 'ACCEPT_UNTRUSTED',
  VERIFY_TRUST_CHAIN: 'VERIFY_TRUST_CHAIN',
};

local reverseMap = {
  '0': 'VERIFY_TRUST_CHAIN',
  '1': 'ACCEPT_UNTRUSTED',
};

local validator = function(input, ctx='') (
  local context = if ctx == '' then type else ctx;
  local v = std.toString(input);
  if std.objectHas(map, v) || std.objectHas(reverseMap, v)
  then input
  else error '%s: invalid value %s for enum %s' % [context, v, type]
);

{
  definition: map {
    _new:: function(obj={}) error '%s: the _new method may not be used on enum types' % 'envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.TrustChainVerification',
    _validate:: validator,
  },
  validator:: validator,
}
