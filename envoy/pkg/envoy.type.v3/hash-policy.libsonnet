// Message type: envoy.type.v3.HashPolicy
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.type.v3.HashPolicy';
local generator = import '../generator.libsonnet';
local fields = {
  filter_state: {
    type: 'envoy.type.v3.HashPolicy.FilterState',
    allowedNames: [
      'filter_state',
      'filterState',
    ],
  },
  source_ip: {
    type: 'envoy.type.v3.HashPolicy.SourceIp',
    allowedNames: [
      'source_ip',
      'sourceIp',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'source_ip',
      'filter_state',
    ],
    required: true,
    group: 'policy_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    SourceIp:: (import 'hash-policy-source-ip.libsonnet').definition,
    FilterState:: (import 'hash-policy-filter-state.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withFilterState:: function(val) validator.validateField(self + { filter_state: val }, 'filter_state', type + '.withFilterState'),
    withSourceIp:: function(val) validator.validateField(self + { source_ip: val }, 'source_ip', type + '.withSourceIp'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
