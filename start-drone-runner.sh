#!/bin/bash

export DRONE_GITHUB_CLIENT_ID=''

export DRONE_GITHUB_CLIENT_SECRET=''

export DRONE_RPC_SECRET=''
export DRONE_SERVER_HOST=drone.gravityhub.org
export DRONE_SERVER_PROTO=https


docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e DRONE_RPC_PROTO="$DRONE_SERVER_PROTO" \
  -e DRONE_RPC_HOST="$DRONE_SERVER_HOST" \
  -e DRONE_RPC_SECRET="$DRONE_RPC_SECRET" \
  -e DRONE_RUNNER_CAPACITY=2 \
  -e DRONE_RUNNER_NAME=${HOSTNAME} \
  -p 3000:3000 \
  --restart always \
  --name runner \
  drone/drone-runner-docker:1
