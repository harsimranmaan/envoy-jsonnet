// Message type: validate.AnyRules
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'validate.AnyRules';
local generator = import '../generator.libsonnet';
local fields = {
  'in': {
    type: 'string',
    allowedNames: [
      'in',
    ],
    containerType: 'list',
  },
  not_in: {
    type: 'string',
    allowedNames: [
      'not_in',
      'notIn',
    ],
    containerType: 'list',
  },
  required: {
    type: 'bool',
    allowedNames: [
      'required',
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
    withIn:: function(val) validator.validateField(self + { 'in': val }, 'in', type + '.withIn'),
    withNotIn:: function(val) validator.validateField(self + { not_in: val }, 'not_in', type + '.withNotIn'),
    withRequired:: function(val) validator.validateField(self + { required: val }, 'required', type + '.withRequired'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
