// Message type: envoy.config.route.v3.RateLimit
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RateLimit';
local generator = import '../generator.libsonnet';
local fields = {
  actions: {
    type: 'envoy.config.route.v3.RateLimit.Action',
    allowedNames: [
      'actions',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 1,
      },
    },
  },
  disable_key: {
    type: 'string',
    allowedNames: [
      'disable_key',
      'disableKey',
    ],
  },
  limit: {
    type: 'envoy.config.route.v3.RateLimit.Override',
    allowedNames: [
      'limit',
    ],
  },
  stage: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'stage',
    ],
    constraints: {
      Uint32: {
        lte: 10,
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Action:: (import 'rate-limit-action.libsonnet').definition,
    Override:: (import 'rate-limit-override.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withActions:: function(val) validator.validateField(self + { actions: val }, 'actions', type + '.withActions'),
    withDisableKey:: function(val) validator.validateField(self + { disable_key: val }, 'disable_key', type + '.withDisableKey'),
    withLimit:: function(val) validator.validateField(self + { limit: val }, 'limit', type + '.withLimit'),
    withStage:: function(val) validator.validateField(self + { stage: val }, 'stage', type + '.withStage'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
