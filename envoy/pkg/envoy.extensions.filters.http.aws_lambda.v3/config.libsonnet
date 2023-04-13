// Message type: envoy.extensions.filters.http.aws_lambda.v3.Config
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.aws_lambda.v3.Config';
local generator = import '../generator.libsonnet';
local fields = {
  arn: {
    type: 'string',
    allowedNames: [
      'arn',
    ],
    constraints: {
      String_: {
        WellKnown: null,
        min_len: 1,
      },
    },
  },
  invocation_mode: {
    type: 'envoy.extensions.filters.http.aws_lambda.v3.Config.InvocationMode',
    allowedNames: [
      'invocation_mode',
      'invocationMode',
    ],
    constraints: {
      Enum: {
        defined_only: true,
      },
    },
  },
  payload_passthrough: {
    type: 'bool',
    allowedNames: [
      'payload_passthrough',
      'payloadPassthrough',
    ],
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    InvocationMode:: (import 'config-invocation-mode.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withArn:: function(val) validator.validateField(self + { arn: val }, 'arn', type + '.withArn'),
    withInvocationMode:: function(val) validator.validateField(self + { invocation_mode: val }, 'invocation_mode', type + '.withInvocationMode'),
    withPayloadPassthrough:: function(val) validator.validateField(self + { payload_passthrough: val }, 'payload_passthrough', type + '.withPayloadPassthrough'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
