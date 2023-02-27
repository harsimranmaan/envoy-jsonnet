// Message type: envoy.config.route.v3.InternalRedirectPolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.InternalRedirectPolicy';
local generator = import '../generator.libsonnet';
local fields = {
  allow_cross_scheme_redirect: {
    type: 'bool',
    allowedNames: [
      'allow_cross_scheme_redirect',
      'allowCrossSchemeRedirect',
    ],
  },
  max_internal_redirects: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_internal_redirects',
      'maxInternalRedirects',
    ],
  },
  predicates: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'predicates',
    ],
    containerType: 'list',
  },
  redirect_response_codes: {
    type: 'uint32',
    allowedNames: [
      'redirect_response_codes',
      'redirectResponseCodes',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        max_items: 5,
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
    withAllowCrossSchemeRedirect:: function(val) validator.validateField(self + { allow_cross_scheme_redirect: val }, 'allow_cross_scheme_redirect', type + '.withAllowCrossSchemeRedirect'),
    withMaxInternalRedirects:: function(val) validator.validateField(self + { max_internal_redirects: val }, 'max_internal_redirects', type + '.withMaxInternalRedirects'),
    withPredicates:: function(val) validator.validateField(self + { predicates: val }, 'predicates', type + '.withPredicates'),
    withRedirectResponseCodes:: function(val) validator.validateField(self + { redirect_response_codes: val }, 'redirect_response_codes', type + '.withRedirectResponseCodes'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
