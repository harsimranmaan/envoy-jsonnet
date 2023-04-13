ENVOY_VERSION=v1.25.1
PROTOC_GEN_VALIDATE_VERSION=v0.9.1

.PHONY: gen
gen:
	rm -rf .gen
	rm -rf envoy
	rm -rf docs
	mkdir -p .gen
	mkdir -p envoy
	mkdir -p docs
	git clone --depth=1 --branch=$(ENVOY_VERSION) https://github.com/envoyproxy/envoy .gen/envoy
	git clone --depth=1 https://github.com/cncf/udpa .gen/udpa
	git clone --depth=1 https://github.com/googleapis/googleapis.git .gen/googleapis
	git clone --depth=1 https://github.com/open-telemetry/opentelemetry-proto.git .gen/opentelemetry-proto
	git clone --depth=1 https://github.com/cncf/xds .gen/xds
	git clone --depth 1 --branch $(PROTOC_GEN_VALIDATE_VERSION) https://github.com/bufbuild/protoc-gen-validate .gen/validate
	protoc --plugin jsonnet  --jsonnet_out=envoy -I .gen/envoy/api -I .gen/googleapis -I .gen/opentelemetry-proto -I .gen/udpa -I .gen/xds -I .gen/validate .gen/envoy/api/envoy/config/bootstrap/v3/bootstrap.proto $(shell find .gen/envoy/api/envoy/extensions -type f -name "*.proto")
	mv envoy/doc docs/doc
	mv envoy/index.html docs/index.html

.PHONY: regen
regen:
	rm -rf envoy
	rm -rf docs
	mkdir -p envoy
	mkdir -p docs
	protoc --plugin jsonnet  --jsonnet_out=envoy -I .gen/envoy/api -I .gen/googleapis -I .gen/opentelemetry-proto -I .gen/udpa -I .gen/xds -I .gen/validate .gen/envoy/api/envoy/config/bootstrap/v3/bootstrap.proto $(shell find .gen/envoy/api/envoy/extensions -type f -name "*.proto")
	mv envoy/doc docs/doc
	mv envoy/index.html docs/index.html

.PHONY: test
test:
	./tests/test.sh