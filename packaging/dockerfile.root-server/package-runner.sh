#!/bin/bash

name="room-server"

cd ../../


rm -rf room-server_3-runner



docker run -itd --name room-server_2-builder room-server_2-builder:1.0 /bin/sh

mkdir -p room-server_2-builder/room-server
docker cp room-server_2-builder:/app/packages/room-server/app-config.json room-server_2-builder
docker cp room-server_2-builder:/app room-server_2-builder

cp packaging/dockerfile.root-server/3-runner ./
docker build --network host --no-cache -f 3-runner -t apitalbe/room-server:20230403-1 .
rm -f 3-runner


rm -rf room-server_3-runner


