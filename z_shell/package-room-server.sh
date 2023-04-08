#!/bin/bash

source ./common_util.sh

cp ./docker-bake-room-server.hcl ../

cd ../
#cp -r ../room-server-deps ./

make build-docker-room-server

rm -f docker-bake-room-server.hcl
#rm -rf room-server-deps

