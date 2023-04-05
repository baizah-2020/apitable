#!/bin/bash

source ./common_util.sh

cp ./docker-bake-init-db.hcl ../

cd ../

make build-docker-init-db

rm -f docker-bake-init-db.hcl


