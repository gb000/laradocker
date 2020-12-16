#!/bin/bash

docker network create -d bridge laradocker &
docker-compose up &
