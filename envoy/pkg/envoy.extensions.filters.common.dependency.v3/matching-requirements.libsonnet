// Message type: envoy.extensions.filters.common.dependency.v3.MatchingRequirements
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.common.dependency.v3.MatchingRequirements';
local generator = import '../generator.libsonnet';
local fields = {
  data_input_allow_list: {
    type: 'envoy.extensions.filters.common.dependency.v3.MatchingRequirements.DataInputAllowList',
    allowedNames: [
      'data_input_allow_list',
      'dataInputAllowList',
    ],
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    DataInputAllowList:: (import 'matching-requirements-data-input-allow-list.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withDataInputAllowList:: function(val) validator.validateField(self + { data_input_allow_list: val }, 'data_input_allow_list', type + '.withDataInputAllowList'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
