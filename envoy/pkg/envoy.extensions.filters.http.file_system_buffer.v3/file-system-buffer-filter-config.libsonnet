// Message type: envoy.extensions.filters.http.file_system_buffer.v3.FileSystemBufferFilterConfig
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.file_system_buffer.v3.FileSystemBufferFilterConfig';
local generator = import '../generator.libsonnet';
local fields = {
  manager_config: {
    type: 'envoy.extensions.common.async_files.v3.AsyncFileManagerConfig',
    allowedNames: [
      'manager_config',
      'managerConfig',
    ],
  },
  request: {
    type: 'envoy.extensions.filters.http.file_system_buffer.v3.StreamConfig',
    allowedNames: [
      'request',
    ],
  },
  response: {
    type: 'envoy.extensions.filters.http.file_system_buffer.v3.StreamConfig',
    allowedNames: [
      'response',
    ],
  },
  storage_buffer_path: {
    type: 'google.protobuf.StringValue',
    allowedNames: [
      'storage_buffer_path',
      'storageBufferPath',
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
    withManagerConfig:: function(val) validator.validateField(self + { manager_config: val }, 'manager_config', type + '.withManagerConfig'),
    withRequest:: function(val) validator.validateField(self + { request: val }, 'request', type + '.withRequest'),
    withResponse:: function(val) validator.validateField(self + { response: val }, 'response', type + '.withResponse'),
    withStorageBufferPath:: function(val) validator.validateField(self + { storage_buffer_path: val }, 'storage_buffer_path', type + '.withStorageBufferPath'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}