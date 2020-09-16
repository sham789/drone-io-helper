#!/bin/bash

export DRONE_GITHUB_CLIENT_ID=''

export DRONE_GITHUB_CLIENT_SECRET=''

export DRONE_RPC_SECRET=''
export DRONE_SERVER_HOST=domain
export DRONE_SERVER_PROTO=https

bash ./start-drone.sh
bash ./start-drone-runner.sh
