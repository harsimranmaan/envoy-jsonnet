// Message type: envoy.extensions.http.custom_response.redirect_policy.v3.RedirectPolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.http.custom_response.redirect_policy.v3.RedirectPolicy';
local generator = import '../generator.libsonnet';
local fields = {
  host: {
    type: 'string',
    allowedNames: [
      'host',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  modify_request_headers_action: {
    type: 'envoy.config.core.v3.TypedExtensionConfig',
    allowedNames: [
      'modify_request_headers_action',
      'modifyRequestHeadersAction',
    ],
  },
  path: {
    type: 'string',
    allowedNames: [
      'path',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  request_headers_to_add: {
    type: 'envoy.config.core.v3.HeaderValueOption',
    allowedNames: [
      'request_headers_to_add',
      'requestHeadersToAdd',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        max_items: 1000,
      },
    },
  },
  response_headers_to_add: {
    type: 'envoy.config.core.v3.HeaderValueOption',
    allowedNames: [
      'response_headers_to_add',
      'responseHeadersToAdd',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        max_items: 1000,
      },
    },
  },
  status_code: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'status_code',
      'statusCode',
    ],
    constraints: {
      Uint32: {
        gte: 100,
        lte: 999,
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
    withHost:: function(val) validator.validateField(self + { host: val }, 'host', type + '.withHost'),
    withModifyRequestHeadersAction:: function(val) validator.validateField(self + { modify_request_headers_action: val }, 'modify_request_headers_action', type + '.withModifyRequestHeadersAction'),
    withPath:: function(val) validator.validateField(self + { path: val }, 'path', type + '.withPath'),
    withRequestHeadersToAdd:: function(val) validator.validateField(self + { request_headers_to_add: val }, 'request_headers_to_add', type + '.withRequestHeadersToAdd'),
    withResponseHeadersToAdd:: function(val) validator.validateField(self + { response_headers_to_add: val }, 'response_headers_to_add', type + '.withResponseHeadersToAdd'),
    withStatusCode:: function(val) validator.validateField(self + { status_code: val }, 'status_code', type + '.withStatusCode'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
