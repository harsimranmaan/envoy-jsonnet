// Message type: envoy.extensions.filters.http.admission_control.v3.AdmissionControl.SuccessCriteria.GrpcCriteria
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.admission_control.v3.AdmissionControl.SuccessCriteria.GrpcCriteria';
local generator = import '../generator.libsonnet';
local fields = {
  grpc_success_status: {
    type: 'uint32',
    allowedNames: [
      'grpc_success_status',
      'grpcSuccessStatus',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 1,
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
    withGrpcSuccessStatus:: function(val) validator.validateField(self + { grpc_success_status: val }, 'grpc_success_status', type + '.withGrpcSuccessStatus'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
