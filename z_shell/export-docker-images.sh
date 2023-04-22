#!/bin/bash

source ./common_util.sh


work_dir="/root/apitable-deploy-package"
rm -rf $work_dir
mkdir -p $work_dir

IMAGE_BACKEND_SERVER=`cat ./.env | grep IMAGE_BACKEND_SERVER | awk -F "=" '{print $2}'`
IMAGE_BACKEND_SERVER=`trim $IMAGE_BACKEND_SERVER`

IMAGE_GATEWAY=`cat ./.env | grep IMAGE_GATEWAY | awk -F "=" '{print $2}'`
IMAGE_GATEWAY=`trim $IMAGE_GATEWAY`

IMAGE_INIT_DB=`cat ./.env | grep IMAGE_INIT_DB | awk -F "=" '{print $2}'`
IMAGE_INIT_DB=`trim $IMAGE_INIT_DB`

IMAGE_ROOM_SERVER=`cat ./.env | grep IMAGE_ROOM_SERVER | awk -F "=" '{print $2}'`
IMAGE_ROOM_SERVER=`trim $IMAGE_ROOM_SERVER`

IMAGE_WEB_SERVER=`cat ./.env | grep IMAGE_WEB_SERVER | awk -F "=" '{print $2}'`
IMAGE_WEB_SERVER=`trim $IMAGE_WEB_SERVER`

IMAGE_IMAGEPROXY_SERVER=`cat ./.env | grep IMAGE_IMAGEPROXY_SERVER | awk -F "=" '{print $2}'`
IMAGE_IMAGEPROXY_SERVER=`trim $IMAGE_IMAGEPROXY_SERVER`

IMAGE_INIT_APPDATA=`cat ./.env | grep IMAGE_INIT_APPDATA | awk -F "=" '{print $2}'`
IMAGE_INIT_APPDATA=`trim $IMAGE_INIT_APPDATA`

IMAGE_MINIO=`cat ./.env | grep IMAGE_MINIO | awk -F "=" '{print $2}'`
IMAGE_MINIO=`trim $IMAGE_MINIO`

IMAGE_MYSQL=`cat ./.env | grep IMAGE_MYSQL | awk -F "=" '{print $2}'`
IMAGE_MYSQL=`trim $IMAGE_MYSQL`

IMAGE_RABBITMQ=`cat ./.env | grep IMAGE_RABBITMQ | awk -F "=" '{print $2}'`
IMAGE_RABBITMQ=`trim $IMAGE_RABBITMQ`

IMAGE_REDIS=`cat ./.env | grep IMAGE_REDIS | awk -F "=" '{print $2}'`
IMAGE_REDIS=`trim $IMAGE_REDIS`

IMAGE_REGISTRY=`cat ./.env | grep IMAGE_REGISTRY | awk -F "=" '{print $2}'`
IMAGE_REGISTRY=`trim $IMAGE_REGISTRY`

docker rmi $IMAGE_REGISTRY/$IMAGE_BACKEND_SERVER
docker tag $IMAGE_BACKEND_SERVER $IMAGE_REGISTRY/$IMAGE_BACKEND_SERVER
docker save $IMAGE_REGISTRY/$IMAGE_BACKEND_SERVER | gzip >> $work_dir/backend_server.tgz
docker rmi $IMAGE_REGISTRY/$IMAGE_BACKEND_SERVER
#
#docker rmi $IMAGE_REGISTRY/$IMAGE_GATEWAY
#docker tag $IMAGE_GATEWAY $IMAGE_REGISTRY/$IMAGE_GATEWAY
#docker save $IMAGE_REGISTRY/$IMAGE_GATEWAY | gzip >> $work_dir/gateway.tgz
#docker rmi $IMAGE_REGISTRY/$IMAGE_GATEWAY
#
#docker rmi $IMAGE_REGISTRY/$IMAGE_INIT_DB
#docker tag $IMAGE_INIT_DB $IMAGE_REGISTRY/$IMAGE_INIT_DB
#docker save $IMAGE_REGISTRY/$IMAGE_INIT_DB | gzip >> $work_dir/init_db.tgz
#docker rmi $IMAGE_REGISTRY/$IMAGE_INIT_DB
#
#docker rmi $IMAGE_REGISTRY/$IMAGE_ROOM_SERVER
#docker tag $IMAGE_ROOM_SERVER $IMAGE_REGISTRY/$IMAGE_ROOM_SERVER
#docker save $IMAGE_REGISTRY/$IMAGE_ROOM_SERVER | gzip >> $work_dir/room_server.tgz
#docker rmi $IMAGE_REGISTRY/$IMAGE_ROOM_SERVER
#
#docker rmi $IMAGE_REGISTRY/$IMAGE_WEB_SERVER
#docker tag $IMAGE_WEB_SERVER $IMAGE_REGISTRY/$IMAGE_WEB_SERVER
#docker save $IMAGE_REGISTRY/$IMAGE_WEB_SERVER | gzip >> $work_dir/web_server.tgz
#docker rmi $IMAGE_REGISTRY/$IMAGE_WEB_SERVER
#
#docker rmi $IMAGE_REGISTRY/$IMAGE_IMAGEPROXY_SERVER
#docker tag $IMAGE_IMAGEPROXY_SERVER $IMAGE_REGISTRY/$IMAGE_IMAGEPROXY_SERVER
#docker save $IMAGE_REGISTRY/$IMAGE_IMAGEPROXY_SERVER | gzip >> $work_dir/imageproxy_server.tgz
#docker rmi $IMAGE_REGISTRY/$IMAGE_IMAGEPROXY_SERVER
#
#docker rmi $IMAGE_REGISTRY/$IMAGE_INIT_APPDATA
#docker tag $IMAGE_INIT_APPDATA $IMAGE_REGISTRY/$IMAGE_INIT_APPDATA
#docker save $IMAGE_REGISTRY/$IMAGE_INIT_APPDATA | gzip >> $work_dir/init_appdata.tgz
#docker rmi $IMAGE_REGISTRY/$IMAGE_INIT_APPDATA
#
#docker save $IMAGE_MINIO | gzip >> $work_dir/minio.tgz
#
#docker save $IMAGE_RABBITMQ | gzip >> $work_dir/rabbitmq.tgz
#
#docker save $IMAGE_REDIS | gzip >> $work_dir/redis.tgz
#
#docker save $IMAGE_REGISTRY | gzip >> $work_dir/registry.tgz




