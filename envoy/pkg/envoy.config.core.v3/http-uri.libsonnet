// Message type: envoy.config.core.v3.HttpUri
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.core.v3.HttpUri';
local generator = import '../generator.libsonnet';
local fields = {
  cluster: {
    type: 'string',
    allowedNames: [
      'cluster',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'timeout',
    ],
    constraints: {
      Duration: {
        gte: {},
        required: true,
      },
    },
  },
  uri: {
    type: 'string',
    allowedNames: [
      'uri',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
};
local oneOfs = [
  {
    fields: [
      'cluster',
    ],
    required: true,
    group: 'http_upstream_type',
  },
];
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
    withCluster:: function(val) validator.validateField(self + { cluster: val }, 'cluster', type + '.withCluster'),
    withTimeout:: function(val) validator.validateField(self + { timeout: val }, 'timeout', type + '.withTimeout'),
    withUri:: function(val) validator.validateField(self + { uri: val }, 'uri', type + '.withUri'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
