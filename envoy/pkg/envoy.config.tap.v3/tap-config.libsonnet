// Message type: envoy.config.tap.v3.TapConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.tap.v3.TapConfig';
local generator = import '../generator.libsonnet';
local fields = {
  match: {
    type: 'envoy.config.common.matcher.v3.MatchPredicate',
    allowedNames: [
      'match',
    ],
  },
  match_config: {
    type: 'envoy.config.tap.v3.MatchPredicate',
    allowedNames: [
      'match_config',
      'matchConfig',
    ],
  },
  output_config: {
    type: 'envoy.config.tap.v3.OutputConfig',
    allowedNames: [
      'output_config',
      'outputConfig',
    ],
    required: true,
  },
  tap_enabled: {
    type: 'envoy.config.core.v3.RuntimeFractionalPercent',
    allowedNames: [
      'tap_enabled',
      'tapEnabled',
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
    withMatch:: function(val) validator.validateField(self + { match: val }, 'match', type + '.withMatch'),
    withMatchConfig:: function(val) validator.validateField(self + { match_config: val }, 'match_config', type + '.withMatchConfig'),
    withOutputConfig:: function(val) validator.validateField(self + { output_config: val }, 'output_config', type + '.withOutputConfig'),
    withTapEnabled:: function(val) validator.validateField(self + { tap_enabled: val }, 'tap_enabled', type + '.withTapEnabled'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}