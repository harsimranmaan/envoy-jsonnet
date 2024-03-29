// Message type: envoy.extensions.watchdog.profile_action.v3.ProfileActionConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.watchdog.profile_action.v3.ProfileActionConfig';
local generator = import '../generator.libsonnet';
local fields = {
  max_profiles: {
    type: 'uint64',
    allowedNames: [
      'max_profiles',
      'maxProfiles',
    ],
  },
  profile_duration: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'profile_duration',
      'profileDuration',
    ],
  },
  profile_path: {
    type: 'string',
    allowedNames: [
      'profile_path',
      'profilePath',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
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
    withMaxProfiles:: function(val) validator.validateField(self + { max_profiles: val }, 'max_profiles', type + '.withMaxProfiles'),
    withProfileDuration:: function(val) validator.validateField(self + { profile_duration: val }, 'profile_duration', type + '.withProfileDuration'),
    withProfilePath:: function(val) validator.validateField(self + { profile_path: val }, 'profile_path', type + '.withProfilePath'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
