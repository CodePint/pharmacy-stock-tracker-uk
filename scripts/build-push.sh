#! /usr/bin/env sh

# Exit in case of error
set -e

TAG=${$1?latest} \
FRONTEND_ENV=${FRONTEND_ENV-production} \
sh ./scripts/build.sh

docker-compose -f docker-compose.yml push
