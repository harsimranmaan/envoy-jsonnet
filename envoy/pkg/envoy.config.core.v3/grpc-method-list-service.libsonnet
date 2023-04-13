// Message type: envoy.config.core.v3.GrpcMethodList.Service
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.GrpcMethodList.Service';
local generator = import '../generator.libsonnet';
local fields = {
  method_names: {
    type: 'string',
    allowedNames: [
      'method_names',
      'methodNames',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 1,
      },
    },
  },
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
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
    withMethodNames:: function(val) validator.validateField(self + { method_names: val }, 'method_names', type + '.withMethodNames'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}