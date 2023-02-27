// Message type: envoy.config.bootstrap.v3.Watchdogs
// Definition generated by protoc-gen-jsonnet. DO NOT EDIT.

local type = 'envoy.config.bootstrap.v3.Watchdogs';
local generator = import '../generator.libsonnet';
local fields = {
  main_thread_watchdog: {
    type: 'envoy.config.bootstrap.v3.Watchdog',
    allowedNames: [
      'main_thread_watchdog',
      'mainThreadWatchdog',
    ],
  },
  worker_watchdog: {
    type: 'envoy.config.bootstrap.v3.Watchdog',
    allowedNames: [
      'worker_watchdog',
      'workerWatchdog',
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
    withMainThreadWatchdog:: function(val) validator.validateField(self + { main_thread_watchdog: val }, 'main_thread_watchdog', type + '.withMainThreadWatchdog'),
    withWorkerWatchdog:: function(val) validator.validateField(self + { worker_watchdog: val }, 'worker_watchdog', type + '.withWorkerWatchdog'),
  },
  validator:: validator.validateAll,
  normalizer: validator.normalizeAll,
}