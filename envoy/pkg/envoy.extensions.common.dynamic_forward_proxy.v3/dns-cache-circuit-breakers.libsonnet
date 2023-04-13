// Message type: envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheCircuitBreakers
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheCircuitBreakers';
local generator = import '../generator.libsonnet';
local fields = {
  max_pending_requests: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_pending_requests',
      'maxPendingRequests',
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
    withMaxPendingRequests:: function(val) validator.validateField(self + { max_pending_requests: val }, 'max_pending_requests', type + '.withMaxPendingRequests'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
