#!/bin/bash

source ./common_util.sh

cp ./docker-bake-other.hcl ../

cd ../

make build-docker-other

rm -f docker-bake-other.hcl


