
#!/bin/bash

name="room-server"

cd ../../

rm -rf room-server_1-deps


docker rm -f room-server_1-deps
cp packaging/dockerfile.root-server/1-deps ./
docker build --network host --no-cache -f 1-deps -t room-server_1-deps:1.0 .
rm -f 1-deps

rm -rf room-server_1-deps


