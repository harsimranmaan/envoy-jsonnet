// Message type: envoy.extensions.resource_monitors.downstream_connections.v3.DownstreamConnectionsConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.resource_monitors.downstream_connections.v3.DownstreamConnectionsConfig';
local generator = import '../generator.libsonnet';
local fields = {
  max_active_downstream_connections: {
    type: 'int64',
    allowedNames: [
      'max_active_downstream_connections',
      'maxActiveDownstreamConnections',
    ],
    constraints: {
      Int64: {
        gt: 0,
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
    withMaxActiveDownstreamConnections:: function(val) validator.validateField(self + { max_active_downstream_connections: val }, 'max_active_downstream_connections', type + '.withMaxActiveDownstreamConnections'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}