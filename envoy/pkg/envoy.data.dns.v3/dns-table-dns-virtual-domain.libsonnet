// Message type: envoy.data.dns.v3.DnsTable.DnsVirtualDomain
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.data.dns.v3.DnsTable.DnsVirtualDomain';
local generator = import '../generator.libsonnet';
local fields = {
  answer_ttl: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'answer_ttl',
      'answerTtl',
    ],
    constraints: {
      Duration: {
        gte: {
          seconds: 30,
        },
      },
    },
  },
  endpoint: {
    type: 'envoy.data.dns.v3.DnsTable.DnsEndpoint',
    allowedNames: [
      'endpoint',
    ],
  },
  name: {
    type: 'string',
    allowedNames: [
      'name',
    ],
    constraints: {
      String_: {
        WellKnown: {
          WellKnownRegex: 1,
        },
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
    withAnswerTtl:: function(val) validator.validateField(self + { answer_ttl: val }, 'answer_ttl', type + '.withAnswerTtl'),
    withEndpoint:: function(val) validator.validateField(self + { endpoint: val }, 'endpoint', type + '.withEndpoint'),
    withName:: function(val) validator.validateField(self + { name: val }, 'name', type + '.withName'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}