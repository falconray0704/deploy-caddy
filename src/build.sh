#!/bin/bash

set -o nounset
set -o errexit
# trace each command execute, same as `bash -v myscripts.sh`
#set -o verbose
# trace each command execute with attachment infomations, same as `bash -x myscripts.sh`
#set -o xtrace

#set -o
set -e
#set -x

source .env

docker build --build-arg CADDY_BUILDER_TAG=${CADDY_BUILDER_TAG} --build-arg CADDY_TAG=${CADDY_TAG} -t ${YOUR_DOCKER_HUB_REPO:-build}/caddy:${CADDY_TAG:-latest}_clouldflare .

