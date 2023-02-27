local envoy = (import 'types.libsonnet').envoy;

local adminAddress = envoy.config.core.v3.Address.withSocketAddress(
  envoy.config.core.v3.SocketAddress.withAddress('0.0.0.0')
  .withPortValue(8081)
);

envoy.config.bootstrap.v3.Admin
.withAddress(adminAddress)
.withAccessLogPath('/tmp/access.log')._validate()
