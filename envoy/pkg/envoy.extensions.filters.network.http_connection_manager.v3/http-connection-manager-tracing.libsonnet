// Message type: envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing';
local generator = import '../generator.libsonnet';
local fields = {
  client_sampling: {
    type: 'envoy.type.v3.Percent',
    allowedNames: [
      'client_sampling',
      'clientSampling',
    ],
  },
  custom_tags: {
    type: 'envoy.type.tracing.v3.CustomTag',
    allowedNames: [
      'custom_tags',
      'customTags',
    ],
    containerType: 'list',
  },
  max_path_tag_length: {
    type: 'google.protobuf.UInt32Value',
    allowedNames: [
      'max_path_tag_length',
      'maxPathTagLength',
    ],
  },
  overall_sampling: {
    type: 'envoy.type.v3.Percent',
    allowedNames: [
      'overall_sampling',
      'overallSampling',
    ],
  },
  provider: {
    type: 'envoy.config.trace.v3.Tracing.Http',
    allowedNames: [
      'provider',
    ],
  },
  random_sampling: {
    type: 'envoy.type.v3.Percent',
    allowedNames: [
      'random_sampling',
      'randomSampling',
    ],
  },
  verbose: {
    type: 'bool',
    allowedNames: [
      'verbose',
    ],
  },
};
local oneOfs = [];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    OperationName:: (import 'http-connection-manager-tracing-operation-name.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withClientSampling:: function(val) validator.validateField(self + { client_sampling: val }, 'client_sampling', type + '.withClientSampling'),
    withCustomTags:: function(val) validator.validateField(self + { custom_tags: val }, 'custom_tags', type + '.withCustomTags'),
    withMaxPathTagLength:: function(val) validator.validateField(self + { max_path_tag_length: val }, 'max_path_tag_length', type + '.withMaxPathTagLength'),
    withOverallSampling:: function(val) validator.validateField(self + { overall_sampling: val }, 'overall_sampling', type + '.withOverallSampling'),
    withProvider:: function(val) validator.validateField(self + { provider: val }, 'provider', type + '.withProvider'),
    withRandomSampling:: function(val) validator.validateField(self + { random_sampling: val }, 'random_sampling', type + '.withRandomSampling'),
    withVerbose:: function(val) validator.validateField(self + { verbose: val }, 'verbose', type + '.withVerbose'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
