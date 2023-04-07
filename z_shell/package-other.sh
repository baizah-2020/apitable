#!/bin/bash

source ./common_util.sh

cp ./docker-bake-other.hcl ../

cd ../
cp -r ../gradle ./

make build-docker-other

rm -f docker-bake-other.hcl

rm -rf ./gradle

