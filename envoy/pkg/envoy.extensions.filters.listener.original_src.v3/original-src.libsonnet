// Message type: envoy.extensions.filters.listener.original_src.v3.OriginalSrc
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.listener.original_src.v3.OriginalSrc';
local generator = import '../generator.libsonnet';
local fields = {
  bind_port: {
    type: 'bool',
    allowedNames: [
      'bind_port',
      'bindPort',
    ],
  },
  mark: {
    type: 'uint32',
    allowedNames: [
      'mark',
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
    withBindPort:: function(val) validator.validateField(self + { bind_port: val }, 'bind_port', type + '.withBindPort'),
    withMark:: function(val) validator.validateField(self + { mark: val }, 'mark', type + '.withMark'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
