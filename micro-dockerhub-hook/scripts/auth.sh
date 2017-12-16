#!/usr/bin/env bash

TAG=$1
cd /config/auth-${TAG}
docker-compose pull
docker-compose up -d --no-deps web
