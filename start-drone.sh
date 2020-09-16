#!/bin/bash

docker run -d \
  --volume=/var/lib/drone:/data \
  --env=DRONE_GITHUB_CLIENT_ID=$DRONE_GITHUB_CLIENT_ID \
  --env=DRONE_GITHUB_CLIENT_SECRET=$DRONE_GITHUB_CLIENT_SECRET \
  --env=DRONE_RPC_SECRET=$DRONE_RPC_SECRET \
  --env=DRONE_SERVER_HOST=$DRONE_SERVER_HOST \
  --env=DRONE_SERVER_PROTO=$DRONE_SERVER_PROTO \
  --publish=8085:80 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:1
