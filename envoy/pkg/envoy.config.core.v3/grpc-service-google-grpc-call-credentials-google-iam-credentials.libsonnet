// Message type: envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials';
local generator = import '../generator.libsonnet';
local fields = {
  authority_selector: {
    type: 'string',
    allowedNames: [
      'authority_selector',
      'authoritySelector',
    ],
  },
  authorization_token: {
    type: 'string',
    allowedNames: [
      'authorization_token',
      'authorizationToken',
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
    withAuthoritySelector:: function(val) validator.validateField(self + { authority_selector: val }, 'authority_selector', type + '.withAuthoritySelector'),
    withAuthorizationToken:: function(val) validator.validateField(self + { authorization_token: val }, 'authorization_token', type + '.withAuthorizationToken'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
