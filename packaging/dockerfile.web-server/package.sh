#!/bin/bash

name="room-server"

cd ../../

rm -rf web-server_1-web-deps
rm -rf web-server_2-web-builder
rm -rf web-server_3-web-runner

# 构建 deps 镜像
docker rm -f web-server_1-web-deps
cp packaging/dockerfile.web-server/1-web-deps ./
docker build --network host --no-cache -f 1-web-deps -t web-server_1-web-deps:1.0 .
rm -f 1-web-deps

# 从 deps 镜像 copy 文件
mkdir -p web-server_1-web-deps/web-server
docker run -itd --name web-server_1-web-deps web-server_1-web-deps:1.0 /bin/sh
docker cp web-server_1-web-deps:/workspace-install/node_modules web-server_1-web-deps
docker cp web-server_1-web-deps:/workspace-install/packages/datasheet/node_modules web-server_1-web-deps/web-server

# 构建 builder 镜像
docker rm -f web-server_2-web-builder
cp packaging/dockerfile.web-server/2-web-builder ./
docker build --network host --no-cache -f 2-web-builder -t web-server_2-web-builder:1.0 .
rm -f 2-web-builder

# 从 builder 镜像 copy 文件
mkdir -p web-server_2-web-builder/datasheet
docker run -itd --name web-server_2-web-builder web-server_2-web-builder:1.0 /bin/sh

docker cp web-server_2-web-builder:/app/.yarn web-server_2-web-builder
docker cp web-server_2-web-builder:/app/.yarnrc.yml web-server_2-web-builder
docker cp web-server_2-web-builder:/app/package.json web-server_2-web-builder
docker cp web-server_2-web-builder:/app/yarn.lock web-server_2-web-builder

docker cp web-server_2-web-builder:/app/packages/datasheet/public web-server_2-web-builder/datasheet
docker cp web-server_2-web-builder:/app/packages/datasheet/next.config.js web-server_2-web-builder/datasheet
docker cp web-server_2-web-builder:/app/packages/datasheet/font-weight-no-number.js web-server_2-web-builder/datasheet
docker cp web-server_2-web-builder:/app/packages/datasheet/package.json web-server_2-web-builder/datasheet


docker cp web-server_2-web-builder:/app/packages/datasheet/web_build/standalone web-server_2-web-builder
docker cp web-server_2-web-builder:/app/packages/datasheet/web_build/static web-server_2-web-builder

#COPY --from=builder /app/.yarn ./.yarn
#COPY --from=builder /app/.yarnrc.yml /app/package.json /app/yarn.lock ./
#
#COPY --from=builder /app/packages/datasheet/public ./packages/datasheet/public
#COPY --from=builder /app/packages/datasheet/next.config.js \
#                    /app/packages/datasheet/font-weight-no-number.js \
#                    /app/packages/datasheet/package.json \
#                    ./packages/datasheet/
#
## Automatically leverage output traces to reduce image size
## https://nextjs.org/docs/advanced-features/output-file-tracing
#COPY --from=builder --chown=nextjs:nodejs /app/packages/datasheet/web_build/standalone ./
#COPY --from=builder --chown=nextjs:nodejs /app/packages/datasheet/web_build/static ./packages/datasheet/web_build/static


cp packaging/dockerfile.web-server/3-web-runner ./
docker build --network host --no-cache -f 3-web-runner -t apitalbe/web-server:20230403-1 .
rm -f 3-web-runner

rm -rf web-server_1-web-deps
rm -rf web-server_2-web-builder
rm -rf web-server_3-web-runner
