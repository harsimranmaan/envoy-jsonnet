// Message type: envoy.extensions.filters.http.oauth2.v3.OAuth2Credentials.CookieNames
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.oauth2.v3.OAuth2Credentials.CookieNames';
local generator = import '../generator.libsonnet';
local fields = {
  bearer_token: {
    type: 'string',
    allowedNames: [
      'bearer_token',
      'bearerToken',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        ignore_empty: true,
      },
    },
  },
  oauth_expires: {
    type: 'string',
    allowedNames: [
      'oauth_expires',
      'oauthExpires',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        ignore_empty: true,
      },
    },
  },
  oauth_hmac: {
    type: 'string',
    allowedNames: [
      'oauth_hmac',
      'oauthHmac',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        ignore_empty: true,
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
    withBearerToken:: function(val) validator.validateField(self + { bearer_token: val }, 'bearer_token', type + '.withBearerToken'),
    withOauthExpires:: function(val) validator.validateField(self + { oauth_expires: val }, 'oauth_expires', type + '.withOauthExpires'),
    withOauthHmac:: function(val) validator.validateField(self + { oauth_hmac: val }, 'oauth_hmac', type + '.withOauthHmac'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
