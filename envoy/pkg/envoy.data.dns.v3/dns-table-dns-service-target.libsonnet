// Message type: envoy.data.dns.v3.DnsTable.DnsServiceTarget
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.data.dns.v3.DnsTable.DnsServiceTarget';
local generator = import '../generator.libsonnet';
local fields = {
  cluster_name: {
    type: 'string',
    allowedNames: [
      'cluster_name',
      'clusterName',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        min_len: 1,
      },
    },
  },
  host_name: {
    type: 'string',
    allowedNames: [
      'host_name',
      'hostName',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
        min_len: 1,
      },
    },
  },
  port: {
    type: 'uint32',
    allowedNames: [
      'port',
    ],
    constraints: {
      Uint32: {
        lt: 65536,
      },
    },
  },
  priority: {
    type: 'uint32',
    allowedNames: [
      'priority',
    ],
    constraints: {
      Uint32: {
        lt: 65536,
      },
    },
  },
  weight: {
    type: 'uint32',
    allowedNames: [
      'weight',
    ],
    constraints: {
      Uint32: {
        lt: 65536,
      },
    },
  },
};
local oneOfs = [
  {
    fields: [
      'host_name',
      'cluster_name',
    ],
    required: true,
    group: 'endpoint_type',
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
    withClusterName:: function(val) validator.validateField(self + { cluster_name: val }, 'cluster_name', type + '.withClusterName'),
    withHostName:: function(val) validator.validateField(self + { host_name: val }, 'host_name', type + '.withHostName'),
    withPort:: function(val) validator.validateField(self + { port: val }, 'port', type + '.withPort'),
    withPriority:: function(val) validator.validateField(self + { priority: val }, 'priority', type + '.withPriority'),
    withWeight:: function(val) validator.validateField(self + { weight: val }, 'weight', type + '.withWeight'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
