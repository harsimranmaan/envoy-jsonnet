// Message type: envoy.config.accesslog.v3.GrpcStatusFilter
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.accesslog.v3.GrpcStatusFilter';
local generator = import '../generator.libsonnet';
local fields = {
  exclude: {
    type: 'bool',
    allowedNames: [
      'exclude',
    ],
  },
  statuses: {
    type: 'envoy.config.accesslog.v3.GrpcStatusFilter.Status',
    allowedNames: [
      'statuses',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        items: {
          Type: {
            Enum: {
              defined_only: true,
            },
          },
        },
      },
    },
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    Status:: (import 'grpc-status-filter-status.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withExclude:: function(val) validator.validateField(self + { exclude: val }, 'exclude', type + '.withExclude'),
    withStatuses:: function(val) validator.validateField(self + { statuses: val }, 'statuses', type + '.withStatuses'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
