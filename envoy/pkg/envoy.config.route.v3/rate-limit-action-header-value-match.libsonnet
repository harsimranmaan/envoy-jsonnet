// Message type: envoy.config.route.v3.RateLimit.Action.HeaderValueMatch
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RateLimit.Action.HeaderValueMatch';
local generator = import '../generator.libsonnet';
local fields = {
  descriptor_key: {
    type: 'string',
    allowedNames: [
      'descriptor_key',
      'descriptorKey',
    ],
  },
  descriptor_value: {
    type: 'string',
    allowedNames: [
      'descriptor_value',
      'descriptorValue',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  expect_match: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'expect_match',
      'expectMatch',
    ],
  },
  headers: {
    type: 'envoy.config.route.v3.HeaderMatcher',
    allowedNames: [
      'headers',
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
    withDescriptorKey:: function(val) validator.validateField(self + { descriptor_key: val }, 'descriptor_key', type + '.withDescriptorKey'),
    withDescriptorValue:: function(val) validator.validateField(self + { descriptor_value: val }, 'descriptor_value', type + '.withDescriptorValue'),
    withExpectMatch:: function(val) validator.validateField(self + { expect_match: val }, 'expect_match', type + '.withExpectMatch'),
    withHeaders:: function(val) validator.validateField(self + { headers: val }, 'headers', type + '.withHeaders'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
