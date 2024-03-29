// Message type: envoy.extensions.filters.http.file_system_buffer.v3.BufferBehavior
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.extensions.filters.http.file_system_buffer.v3.BufferBehavior';
local generator = import '../generator.libsonnet';
local fields = {
  bypass: {
    type: 'envoy.extensions.filters.http.file_system_buffer.v3.BufferBehavior.Bypass',
    allowedNames: [
      'bypass',
    ],
  },
  fully_buffer: {
    type: 'envoy.extensions.filters.http.file_system_buffer.v3.BufferBehavior.FullyBuffer',
    allowedNames: [
      'fully_buffer',
      'fullyBuffer',
    ],
  },
  fully_buffer_and_always_inject_content_length: {
    type: 'envoy.extensions.filters.http.file_system_buffer.v3.BufferBehavior.FullyBufferAndAlwaysInjectContentLength',
    allowedNames: [
      'fully_buffer_and_always_inject_content_length',
      'fullyBufferAndAlwaysInjectContentLength',
    ],
  },
  inject_content_length_if_necessary: {
    type: 'envoy.extensions.filters.http.file_system_buffer.v3.BufferBehavior.InjectContentLengthIfNecessary',
    allowedNames: [
      'inject_content_length_if_necessary',
      'injectContentLengthIfNecessary',
    ],
  },
  stream_when_possible: {
    type: 'envoy.extensions.filters.http.file_system_buffer.v3.BufferBehavior.StreamWhenPossible',
    allowedNames: [
      'stream_when_possible',
      'streamWhenPossible',
    ],
  },
};
local oneOfs = [
  {
    fields: [
      'stream_when_possible',
      'bypass',
      'inject_content_length_if_necessary',
      'fully_buffer_and_always_inject_content_length',
      'fully_buffer',
    ],
    required: true,
    group: 'behavior',
  },
];
local validator = generator(type, fields, oneOfs);

{
  definition: {
    StreamWhenPossible:: (import 'buffer-behavior-stream-when-possible.libsonnet').definition,
    Bypass:: (import 'buffer-behavior-bypass.libsonnet').definition,
    InjectContentLengthIfNecessary:: (import 'buffer-behavior-inject-content-length-if-necessary.libsonnet').definition,
    FullyBufferAndAlwaysInjectContentLength:: (import 'buffer-behavior-fully-buffer-and-always-inject-content-length.libsonnet').definition,
    FullyBuffer:: (import 'buffer-behavior-fully-buffer.libsonnet').definition,

    // methods
    _new:: function(partialObject={}) (
      local obj = if std.type(partialObject) != 'object' then error 'expected object for _new invocation of %s' % type else partialObject;
      validator.validatePartial(obj + self)
    ),
    _validate:: function() validator.validateAll(self),
    _normalize:: function(kind='') validator.normalizeAll(self, kind),
    withBypass:: function(val) validator.validateField(self + { bypass: val }, 'bypass', type + '.withBypass'),
    withFullyBuffer:: function(val) validator.validateField(self + { fully_buffer: val }, 'fully_buffer', type + '.withFullyBuffer'),
    withFullyBufferAndAlwaysInjectContentLength:: function(val) validator.validateField(self + { fully_buffer_and_always_inject_content_length: val }, 'fully_buffer_and_always_inject_content_length', type + '.withFullyBufferAndAlwaysInjectContentLength'),
    withInjectContentLengthIfNecessary:: function(val) validator.validateField(self + { inject_content_length_if_necessary: val }, 'inject_content_length_if_necessary', type + '.withInjectContentLengthIfNecessary'),
    withStreamWhenPossible:: function(val) validator.validateField(self + { stream_when_possible: val }, 'stream_when_possible', type + '.withStreamWhenPossible'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}
