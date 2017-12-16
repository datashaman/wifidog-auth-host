#!/usr/bin/env bash

for config in config/*
do
    cd $config
    docker-compose pull
    docker-compose up -d
    cd -
done
