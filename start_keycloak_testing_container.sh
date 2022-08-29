#!/bin/bash

docker rm keycloak-testing-container || true

cd /Users/chris/Development/xrstager-keycloak-theme

docker run \
   -p 8080:8080 \
   --name keycloak-testing-container \
   -e KEYCLOAK_ADMIN=admin \
   -e KEYCLOAK_ADMIN_PASSWORD=admin \
   -e JAVA_OPTS=-Dkeycloak.profile=preview \
   -v /Users/chris/Development/xrstager-keycloak-theme/src/main/resources/theme/xrstager:/opt/keycloak/themes/xrstager:rw \
   -it quay.io/keycloak/keycloak:18.0.0 \
   start-dev
