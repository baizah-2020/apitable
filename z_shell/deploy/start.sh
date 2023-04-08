#!/bin/bash

source ./common_util.sh


chmod +x ./docker-compose

./docker-compose --env-file=./.env -f docker-compose-darcy-deploy.yaml up -d &
