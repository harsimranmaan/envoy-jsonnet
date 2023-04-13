// Message type: envoy.extensions.http.stateful_session.cookie.v3.CookieBasedSessionState
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.http.stateful_session.cookie.v3.CookieBasedSessionState';
local generator = import '../generator.libsonnet';
local fields = {
  cookie: {
    type: 'envoy.type.http.v3.Cookie',
    allowedNames: [
      'cookie',
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
    withCookie:: function(val) validator.validateField(self + { cookie: val }, 'cookie', type + '.withCookie'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}