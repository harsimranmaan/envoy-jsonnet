// Message type: envoy.config.accesslog.v3.ResponseFlagFilter
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.accesslog.v3.ResponseFlagFilter';
local generator = import '../generator.libsonnet';
local fields = {
  flags: {
    type: 'string',
    allowedNames: [
      'flags',
    ],
    containerType: 'list',
    constraints: {
      Repeated: {
        items: {
          Type: {
            String_: {
              WellKnown: null,
              'in': [
                'LH',
                'UH',
                'UT',
                'LR',
                'UR',
                'UF',
                'UC',
                'UO',
                'NR',
                'DI',
                'FI',
                'RL',
                'UAEX',
                'RLSE',
                'DC',
                'URX',
                'SI',
                'IH',
                'DPE',
                'UMSDR',
                'RFCF',
                'NFCF',
                'DT',
                'UPE',
                'NC',
                'OM',
              ],
            },
          },
        },
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
    withFlags:: function(val) validator.validateField(self + { flags: val }, 'flags', type + '.withFlags'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}