#!/bin/bash

name="room-server"

cd ../../

rm -rf room-server_2-builder



mkdir -p room-server_1-deps/room-server
docker rm -f room-server_1-deps
docker run -itd --name room-server_1-deps room-server_1-deps:1.0 /bin/sh

docker cp room-server_1-deps:/app/node_modules room-server_1-deps
docker cp room-server_1-deps:/app/packages/room-server/node_modules room-server_1-deps/room-server
mv room-server_1-deps/node_modules room-server_1-deps/node_modules-1
mv room-server_1-deps/room-server/node_modules room-server_1-deps/room-server/node_modules-1

docker rm -f room-server_2-builder
cp packaging/dockerfile.root-server/2-builder ./
docker build --network host --no-cache -f 2-builder -t room-server_2-builder:1.0 .
rm -f 2-builder

# rm -rf room-server_2-builder


