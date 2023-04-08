#!/bin/bash

source ./common_util.sh

rm -rf .data

chmod +x ./docker-compose

./docker-compose --env-file=./.env -f docker-compose-darcy-deploy.yaml up -d &
