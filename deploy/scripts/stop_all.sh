#!/bin/bash

cd ../../dish-dash-frontend
docker-compose down

cd ../dishdash-server
docker-compose down

cd ..
docker-compose down
