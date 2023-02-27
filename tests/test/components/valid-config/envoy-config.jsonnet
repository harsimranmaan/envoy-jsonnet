local envoy = (import 'types.libsonnet').envoy;
local adminConfig = (import './envoy-admin.libsonnet');

local envoyConfig = envoy.config.bootstrap.v3.Bootstrap
                    .withAdmin(adminConfig);

envoyConfig._validate()
