// Message type: envoy.extensions.filters.udp.dns_filter.v3.DnsFilterConfig.ServerContextConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.udp.dns_filter.v3.DnsFilterConfig.ServerContextConfig';
local generator = import '../generator.libsonnet';
local fields = {
  external_dns_table: {
    type: 'envoy.config.core.v3.DataSource',
    allowedNames: [
      'external_dns_table',
      'externalDnsTable',
    ],
  },
  inline_dns_table: {
    type: 'envoy.data.dns.v3.DnsTable',
    allowedNames: [
      'inline_dns_table',
      'inlineDnsTable',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'inline_dns_table',
      'external_dns_table',
    ],
    required: true,
    group: 'config_source',
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
    withExternalDnsTable:: function(val) validator.validateField(self + { external_dns_table: val }, 'external_dns_table', type + '.withExternalDnsTable'),
    withInlineDnsTable:: function(val) validator.validateField(self + { inline_dns_table: val }, 'inline_dns_table', type + '.withInlineDnsTable'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
