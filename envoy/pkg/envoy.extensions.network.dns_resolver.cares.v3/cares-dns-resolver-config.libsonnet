// Message type: envoy.extensions.network.dns_resolver.cares.v3.CaresDnsResolverConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.network.dns_resolver.cares.v3.CaresDnsResolverConfig';
local generator = import '../generator.libsonnet';
local fields = {
  dns_resolver_options: {
    type: 'envoy.config.core.v3.DnsResolverOptions',
    allowedNames: [
      'dns_resolver_options',
      'dnsResolverOptions',
    ],
  },
  filter_unroutable_families: {
    type: 'bool',
    allowedNames: [
      'filter_unroutable_families',
      'filterUnroutableFamilies',
    ],
  },
  resolvers: {
    type: 'envoy.config.core.v3.Address',
    allowedNames: [
      'resolvers',
    ],
    containerType: 'list',
    required: true,
    constraints: {
      Repeated: {
        min_items: 1,
      },
    },
  },
  use_resolvers_as_fallback: {
    type: 'bool',
    allowedNames: [
      'use_resolvers_as_fallback',
      'useResolversAsFallback',
    ],
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
    withDnsResolverOptions:: function(val) validator.validateField(self + { dns_resolver_options: val }, 'dns_resolver_options', type + '.withDnsResolverOptions'),
    withFilterUnroutableFamilies:: function(val) validator.validateField(self + { filter_unroutable_families: val }, 'filter_unroutable_families', type + '.withFilterUnroutableFamilies'),
    withResolvers:: function(val) validator.validateField(self + { resolvers: val }, 'resolvers', type + '.withResolvers'),
    withUseResolversAsFallback:: function(val) validator.validateField(self + { use_resolvers_as_fallback: val }, 'use_resolvers_as_fallback', type + '.withUseResolversAsFallback'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
