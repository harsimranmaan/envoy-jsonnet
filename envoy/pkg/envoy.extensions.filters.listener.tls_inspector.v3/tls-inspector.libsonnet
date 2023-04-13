// Message type: envoy.extensions.filters.listener.tls_inspector.v3.TlsInspector
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.listener.tls_inspector.v3.TlsInspector';
local generator = import '../generator.libsonnet';
local fields = {
  enable_ja3_fingerprinting: {
    type: 'google.protobuf.BoolValue',
    allowedNames: [
      'enable_ja3_fingerprinting',
      'enableJa3Fingerprinting',
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
    withEnableJa3Fingerprinting:: function(val) validator.validateField(self + { enable_ja3_fingerprinting: val }, 'enable_ja3_fingerprinting', type + '.withEnableJa3Fingerprinting'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
