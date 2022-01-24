MAKEFLAGS=--no-builtin-rules --no-builtin-variables --always-make
ROOT := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

init-flow-emulator:
	cd flow-emulator && flow init

run-flow-emulator:
	cd flow-emulator && flow emulator

generate-flow-keys:
	cd flow-emulator && flow keys generate

reset-flow-emulator:
	cd flow-emulator && flow init --reset

gen-proto:
	mkdir -p lib/flow/generated
	rm -rf lib/flow/generated/*
	protoc --proto_path=proto/flow/. --dart_out=grpc:lib/flow/generated proto/flow/**/*.proto
	protoc --proto_path=proto/flow/. --dart_out=grpc:lib/flow/generated google/protobuf/timestamp.proto