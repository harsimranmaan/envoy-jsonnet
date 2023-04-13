// Message type: envoy.extensions.filters.http.jwt_authn.v3.JwtClaimToHeader
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.jwt_authn.v3.JwtClaimToHeader';
local generator = import '../generator.libsonnet';
local fields = {
  claim_name: {
    type: 'string',
    allowedNames: [
      'claim_name',
      'claimName',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  header_name: {
    type: 'string',
    allowedNames: [
      'header_name',
      'headerName',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        min_len: 1,
        strict: false,
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
    withClaimName:: function(val) validator.validateField(self + { claim_name: val }, 'claim_name', type + '.withClaimName'),
    withHeaderName:: function(val) validator.validateField(self + { header_name: val }, 'header_name', type + '.withHeaderName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
