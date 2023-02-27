// Message type: envoy.config.core.v3.GrpcService
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.GrpcService';
local generator = import '../generator.libsonnet';
local fields = {
  envoy_grpc: {
    type: 'envoy.config.core.v3.GrpcService.EnvoyGrpc',
    allowedNames: [
      'envoy_grpc',
      'envoyGrpc',
    ],
  },
  google_grpc: {
    type: 'envoy.config.core.v3.GrpcService.GoogleGrpc',
    allowedNames: [
      'google_grpc',
      'googleGrpc',
    ],
  },
  initial_metadata: {
    type: 'envoy.config.core.v3.HeaderValue',
    allowedNames: [
      'initial_metadata',
      'initialMetadata',
    ],
    containerType: 'list',
  },
  timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'timeout',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'envoy_grpc',
      'google_grpc',
    ],
    required: true,
    group: 'target_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    EnvoyGrpc:: (import 'grpc-service-envoy-grpc.libsonnet').definition,
    GoogleGrpc:: (import 'grpc-service-google-grpc.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withEnvoyGrpc:: function(val) validator.validateField(self + { envoy_grpc: val }, 'envoy_grpc', type + '.withEnvoyGrpc'),
    withGoogleGrpc:: function(val) validator.validateField(self + { google_grpc: val }, 'google_grpc', type + '.withGoogleGrpc'),
    withInitialMetadata:: function(val) validator.validateField(self + { initial_metadata: val }, 'initial_metadata', type + '.withInitialMetadata'),
    withTimeout:: function(val) validator.validateField(self + { timeout: val }, 'timeout', type + '.withTimeout'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
