// Message type: envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.OnDemand
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.OnDemand';
local generator = import '../generator.libsonnet';
local fields = {
  odcds_config: {
    type: 'envoy.config.core.v3.ConfigSource',
    allowedNames: [
      'odcds_config',
      'odcdsConfig',
    ],
  },
  resources_locator: {
    type: 'string',
    allowedNames: [
      'resources_locator',
      'resourcesLocator',
    ],
  },
  timeout: {
    type: 'google.protobuf.Duration',
    allowedNames: [
      'timeout',
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
    withOdcdsConfig:: function(val) validator.validateField(self + { odcds_config: val }, 'odcds_config', type + '.withOdcdsConfig'),
    withResourcesLocator:: function(val) validator.validateField(self + { resources_locator: val }, 'resources_locator', type + '.withResourcesLocator'),
    withTimeout:: function(val) validator.validateField(self + { timeout: val }, 'timeout', type + '.withTimeout'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
