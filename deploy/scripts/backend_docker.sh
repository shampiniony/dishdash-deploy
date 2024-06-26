#!/bin/bash

SCRIPT_PATH=$(dirname "$(realpath "$0")")

BACKEND_SOURCE_FP="$SCRIPT_PATH/../backend"
BACKEND_DEST_FP="$SCRIPT_PATH/../../dishdash-server"

cp "$BACKEND_SOURCE_FP/Dockerfile" "$BACKEND_DEST_FP/Dockerfile"

cp "$BACKEND_SOURCE_FP/docker-compose.yml" "$BACKEND_DEST_FP/docker-compose.yml"
