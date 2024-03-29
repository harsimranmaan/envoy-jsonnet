// Message type: envoy.data.dns.v3.DnsTable.DnsEndpoint
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.data.dns.v3.DnsTable.DnsEndpoint';
local generator = import '../generator.libsonnet';
local fields = {
  address_list: {
    type: 'envoy.data.dns.v3.DnsTable.AddressList',
    allowedNames: [
      'address_list',
      'addressList',
    ],
  },
  cluster_name: {
    type: 'string',
    allowedNames: [
      'cluster_name',
      'clusterName',
    ],
  },
  service_list: {
    type: 'envoy.data.dns.v3.DnsTable.DnsServiceList',
    allowedNames: [
      'service_list',
      'serviceList',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'address_list',
      'cluster_name',
      'service_list',
    ],
    required: true,
    group: 'endpoint_config',
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
    withAddressList:: function(val) validator.validateField(self + { address_list: val }, 'address_list', type + '.withAddressList'),
    withClusterName:: function(val) validator.validateField(self + { cluster_name: val }, 'cluster_name', type + '.withClusterName'),
    withServiceList:: function(val) validator.validateField(self + { service_list: val }, 'service_list', type + '.withServiceList'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
