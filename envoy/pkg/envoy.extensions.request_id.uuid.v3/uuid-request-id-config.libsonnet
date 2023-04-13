// Message type: envoy.extensions.request_id.uuid.v3.UuidRequestIdConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.request_id.uuid.v3.UuidRequestIdConfig';
local generator = import '../generator.libsonnet';
local fields = {
  pack_trace_reason: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'pack_trace_reason',
      'packTraceReason',
    ],
  },
  use_request_id_for_trace_sampling: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'use_request_id_for_trace_sampling',
      'useRequestIdForTraceSampling',
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
    withPackTraceReason:: function(val) validator.validateField(self + { pack_trace_reason: val }, 'pack_trace_reason', type + '.withPackTraceReason'),
    withUseRequestIdForTraceSampling:: function(val) validator.validateField(self + { use_request_id_for_trace_sampling: val }, 'use_request_id_for_trace_sampling', type + '.withUseRequestIdForTraceSampling'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
