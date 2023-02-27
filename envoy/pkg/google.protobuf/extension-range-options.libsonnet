// Message type: google.protobuf.ExtensionRangeOptions
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'google.protobuf.ExtensionRangeOptions';
local generator = import '../generator.libsonnet';
local fields = {
  uninterpreted_option: {
    type: 'google.protobuf.UninterpretedOption',
    allowedNames: [
      'uninterpreted_option',
      'uninterpretedOption',
    ],
    containerType: 'list',
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
    withUninterpretedOption:: function(val) validator.validateField(self + { uninterpreted_option: val }, 'uninterpreted_option', type + '.withUninterpretedOption'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
