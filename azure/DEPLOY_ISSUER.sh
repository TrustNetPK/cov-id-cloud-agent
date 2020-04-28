#!/usr/bin/env bash
set -euo pipefail

echo ${REGISTRY_LOGIN_SERVER}
echo ${REGISTRY_USERNAME}

az container create --resource-group trustnet-covid-initiative --name issuer-agent-container \
    --image "${REGISTRY_LOGIN_SERVER}/aries-issuer-agent-image:latest" \
    --registry-login-server "${REGISTRY_LOGIN_SERVER}" \
    --registry-username ${REGISTRY_USERNAME} \
    --registry-password ${REGISTRY_PASSWORD} \
    --dns-name-label issuer \
    --cpu 1 \
    --memory 1 \
    --ports [3000 8000]