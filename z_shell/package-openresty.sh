#!/bin/bash

source ./common_util.sh

cp ./docker-bake-openresty.hcl ../

cd ../

make build-docker-openresty

rm -f docker-bake-openresty.hcl


