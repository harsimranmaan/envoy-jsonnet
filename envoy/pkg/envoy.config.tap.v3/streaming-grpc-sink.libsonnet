// Message type: envoy.config.tap.v3.StreamingGrpcSink
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.tap.v3.StreamingGrpcSink';
local generator = import '../generator.libsonnet';
local fields = {
  grpc_service: {
    type: 'envoy.config.core.v3.GrpcService',
    allowedNames: [
      'grpc_service',
      'grpcService',
    ],
    required: true,
  },
  tap_id: {
    type: 'string',
    allowedNames: [
      'tap_id',
      'tapId',
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
    withGrpcService:: function(val) validator.validateField(self + { grpc_service: val }, 'grpc_service', type + '.withGrpcService'),
    withTapId:: function(val) validator.validateField(self + { tap_id: val }, 'tap_id', type + '.withTapId'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}