// Message type: envoy.extensions.load_balancing_policies.common.v3.LocalityLbConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.load_balancing_policies.common.v3.LocalityLbConfig';
local generator = import '../generator.libsonnet';
local fields = {
  locality_weighted_lb_config: {
    type: 'envoy.extensions.load_balancing_policies.common.v3.LocalityLbConfig.LocalityWeightedLbConfig',
    allowedNames: [
      'locality_weighted_lb_config',
      'localityWeightedLbConfig',
    ],
  },
  zone_aware_lb_config: {
    type: 'envoy.extensions.load_balancing_policies.common.v3.LocalityLbConfig.ZoneAwareLbConfig',
    allowedNames: [
      'zone_aware_lb_config',
      'zoneAwareLbConfig',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'zone_aware_lb_config',
      'locality_weighted_lb_config',
    ],
    required: true,
    group: 'locality_config_specifier',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    ZoneAwareLbConfig:: (import 'locality-lb-config-zone-aware-lb-config.libsonnet').definition,
    LocalityWeightedLbConfig:: (import 'locality-lb-config-locality-weighted-lb-config.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withLocalityWeightedLbConfig:: function(val) validator.validateField(self + { locality_weighted_lb_config: val }, 'locality_weighted_lb_config', type + '.withLocalityWeightedLbConfig'),
    withZoneAwareLbConfig:: function(val) validator.validateField(self + { zone_aware_lb_config: val }, 'zone_aware_lb_config', type + '.withZoneAwareLbConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
