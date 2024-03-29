// Message type: envoy.data.dns.v3.DnsTable.DnsServiceList
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.data.dns.v3.DnsTable.DnsServiceList';
local generator = import '../generator.libsonnet';
local fields = {
  services: {
    type: 'envoy.data.dns.v3.DnsTable.DnsService',
    allowedNames: [
      'services',
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
    withServices:: function(val) validator.validateField(self + { services: val }, 'services', type + '.withServices'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
