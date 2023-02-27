// Message type: envoy.config.core.v3.GrpcService.EnvoyGrpc
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.GrpcService.EnvoyGrpc';
local generator = import '../generator.libsonnet';
local fields = {
  authority: {
    type: 'string',
    allowedNames: [
      'authority',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 2,
        },
        max_bytes: 16384,
        min_len: 0,
        strict: false,
      },
    },
  },
  cluster_name: {
    type: 'string',
    allowedNames: [
      'cluster_name',
      'clusterName',
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
    withAuthority:: function(val) validator.validateField(self + { authority: val }, 'authority', type + '.withAuthority'),
    withClusterName:: function(val) validator.validateField(self + { cluster_name: val }, 'cluster_name', type + '.withClusterName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
