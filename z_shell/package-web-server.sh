#!/bin/bash

source ./common_util.sh

cp ./docker-bake-web-server.hcl ../

cd ../

make build-docker-web-server

rm -f docker-bake-web-server.hcl


