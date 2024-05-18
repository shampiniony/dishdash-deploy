#!/bin/bash

SCRIPT_PATH=$(dirname "$(realpath "$0")")

FRONTEND_SOURCE_FP="$SCRIPT_PATH/../frontend"
FRONTEND_DEST_FP="$SCRIPT_PATH/../../dish-dash-frontend"

cp "$FRONTEND_SOURCE_FP/Dockerfile" "$FRONTEND_DEST_FP/Dockerfile"

cp "$FRONTEND_SOURCE_FP/nginx.conf" "$FRONTEND_DEST_FP/nginx.conf"
