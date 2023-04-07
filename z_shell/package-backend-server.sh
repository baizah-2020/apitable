#!/bin/bash

source ./common_util.sh

cp ./docker-bake-backend-server.hcl ../

cd ../
cp -r ../gradle ./
make build-docker-backend-server

rm -f docker-bake-backend-server.hcl

rm -rf ./gradle


