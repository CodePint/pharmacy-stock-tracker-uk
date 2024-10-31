#! /usr/bin/env sh

# Exit in case of error
set -e

# incomplete script, placeholder for future implementation
echo "INCOMPLETE DEPLOYMENT SCRIPT"
exit 1


TAG=${$1?latest} \
DOMAIN=${DOMAIN?VAR_NOT_SET} \
STACK_NAME=${STACK_NAME?VAR_NOT_SET} \

docker-compose -f docker-compose.yml config > docker-stack.yml

docker-auto-labels docker-stack.yml

docker stack deploy -c docker-stack.yml --with-registry-auth "${STACK_NAME?VAR_NOT_SET}"
