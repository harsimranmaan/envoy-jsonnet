// Message type: envoy.config.route.v3.RouteAction.UpgradeConfig.ConnectConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.route.v3.RouteAction.UpgradeConfig.ConnectConfig';
local generator = import '../generator.libsonnet';
local fields = {
  allow_post: {
    type: 'bool',
    allowedNames: [
      'allow_post',
      'allowPost',
    ],
  },
  proxy_protocol_config: {
    type: 'envoy.config.core.v3.ProxyProtocolConfig',
    allowedNames: [
      'proxy_protocol_config',
      'proxyProtocolConfig',
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
    withAllowPost:: function(val) validator.validateField(self + { allow_post: val }, 'allow_post', type + '.withAllowPost'),
    withProxyProtocolConfig:: function(val) validator.validateField(self + { proxy_protocol_config: val }, 'proxy_protocol_config', type + '.withProxyProtocolConfig'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
