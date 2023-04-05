#!/bin/bash

source ./common_util.sh

cp ./docker-bake-room-server.hcl ../

cd ../

make build-docker-room-server

rm -f docker-bake-room-server.hcl


