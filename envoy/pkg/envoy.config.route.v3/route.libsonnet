// Message type: envoy.config.route.v3.Route
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.Route';
local generator = import '../generator.libsonnet';
local fields = {
  decorator: {
    type: 'envoy.config.route.v3.Decorator',
    allowedNames: [
      'decorator',
    ],
  },
  direct_response: {
    type: 'envoy.config.route.v3.DirectResponseAction',
    allowedNames: [
      'direct_response',
      'directResponse',
    ],
  },
  filter_action: {
    type: 'envoy.config.route.v3.FilterAction',
    allowedNames: [
      'filter_action',
      'filterAction',
    ],
  },
  match: {
    type: 'envoy.config.route.v3.RouteMatch',
    allowedNames: [
      'match',
    ],
    required: true,
  },
  metadata: {
    type: 'envoy.config.core.v3.Metadata',
    allowedNames: [
      'metadata',
    ],
  },
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
  },
  non_forwarding_action: {
    type: 'envoy.config.route.v3.NonForwardingAction',
    allowedNames: [
      'non_forwarding_action',
      'nonForwardingAction',
    ],
  },
  per_request_buffer_limit_bytes: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'per_request_buffer_limit_bytes',
      'perRequestBufferLimitBytes',
    ],
  },
  redirect: {
    type: 'envoy.config.route.v3.RedirectAction',
    allowedNames: [
      'redirect',
    ],
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
  request_headers_to_remove: {
    type: 'string',
    allowedNames: [
      'request_headers_to_remove',
      'requestHeadersToRemove',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        items: {
          Type: {
            String_: {
              WellKnown: {
                WellKnownRegex: 1,
              },
              min_len: 1,
              strict: false,
            },
          },
        },
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
  response_headers_to_remove: {
    type: 'string',
    allowedNames: [
      'response_headers_to_remove',
      'responseHeadersToRemove',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        items: {
          Type: {
            String_: {
              WellKnown: {
                WellKnownRegex: 1,
              },
              min_len: 1,
              strict: false,
            },
          },
        },
      },
    },
  },
  route: {
    type: 'envoy.config.route.v3.RouteAction',
    allowedNames: [
      'route',
    ],
  },
  stat_prefix: {
    type: 'string',
    allowedNames: [
      'stat_prefix',
      'statPrefix',
    ],
  },
  tracing: {
    type: 'envoy.config.route.v3.Tracing',
    allowedNames: [
      'tracing',
    ],
  },
  typed_per_filter_config: {
    type: 'google.protobuf.Any',
    allowedNames: [
      'typed_per_filter_config',
      'typedPerFilterConfig',
    ],
    containerType: 'map',
  },
};
local oneOfs = [
  {
    fields: [
      'route',
      'redirect',
      'direct_response',
      'filter_action',
      'non_forwarding_action',
    ],
    required: true,
    group: 'action',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    TypedPerFilterConfigEntry:: (import 'route-typed-per-filter-config-entry.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withDecorator:: function(val) validator.validateField(self + { decorator: val }, 'decorator', type + '.withDecorator'),
    withDirectResponse:: function(val) validator.validateField(self + { direct_response: val }, 'direct_response', type + '.withDirectResponse'),
    withFilterAction:: function(val) validator.validateField(self + { filter_action: val }, 'filter_action', type + '.withFilterAction'),
    withMatch:: function(val) validator.validateField(self + { match: val }, 'match', type + '.withMatch'),
    withMetadata:: function(val) validator.validateField(self + { metadata: val }, 'metadata', type + '.withMetadata'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
    withNonForwardingAction:: function(val) validator.validateField(self + { non_forwarding_action: val }, 'non_forwarding_action', type + '.withNonForwardingAction'),
    withPerRequestBufferLimitBytes:: function(val) validator.validateField(self + { per_request_buffer_limit_bytes: val }, 'per_request_buffer_limit_bytes', type + '.withPerRequestBufferLimitBytes'),
    withRedirect:: function(val) validator.validateField(self + { redirect: val }, 'redirect', type + '.withRedirect'),
    withRequestHeadersToAdd:: function(val) validator.validateField(self + { request_headers_to_add: val }, 'request_headers_to_add', type + '.withRequestHeadersToAdd'),
    withRequestHeadersToRemove:: function(val) validator.validateField(self + { request_headers_to_remove: val }, 'request_headers_to_remove', type + '.withRequestHeadersToRemove'),
    withResponseHeadersToAdd:: function(val) validator.validateField(self + { response_headers_to_add: val }, 'response_headers_to_add', type + '.withResponseHeadersToAdd'),
    withResponseHeadersToRemove:: function(val) validator.validateField(self + { response_headers_to_remove: val }, 'response_headers_to_remove', type + '.withResponseHeadersToRemove'),
    withRoute:: function(val) validator.validateField(self + { route: val }, 'route', type + '.withRoute'),
    withStatPrefix:: function(val) validator.validateField(self + { stat_prefix: val }, 'stat_prefix', type + '.withStatPrefix'),
    withTracing:: function(val) validator.validateField(self + { tracing: val }, 'tracing', type + '.withTracing'),
    withTypedPerFilterConfig:: function(val) validator.validateField(self + { typed_per_filter_config: val }, 'typed_per_filter_config', type + '.withTypedPerFilterConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
