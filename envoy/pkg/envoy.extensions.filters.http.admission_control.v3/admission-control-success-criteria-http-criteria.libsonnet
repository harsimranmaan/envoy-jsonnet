// Message type: envoy.extensions.filters.http.admission_control.v3.AdmissionControl.SuccessCriteria.HttpCriteria
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.admission_control.v3.AdmissionControl.SuccessCriteria.HttpCriteria';
local generator = import '../generator.libsonnet';
local fields = {
  http_success_status: {
    type: 'envoy.type.v3.Int32Range',
    allowedNames: [
      'http_success_status',
      'httpSuccessStatus',
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
    withHttpSuccessStatus:: function(val) validator.validateField(self + { http_success_status: val }, 'http_success_status', type + '.withHttpSuccessStatus'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}