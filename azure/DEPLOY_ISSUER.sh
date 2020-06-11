#!/usr/bin/env bash
set -euo pipefail

az container create --resource-group trustnet-covid-initiative --name issuer-agent-container \
    --image "${REGISTRY_LOGIN_SERVER}/aries-issuer-agent-image:latest" \
    --registry-login-server "${REGISTRY_LOGIN_SERVER}" \
    --registry-username ${REGISTRY_USERNAME} \
    --registry-password ${REGISTRY_PASSWORD} \
    --dns-name-label issuer \
    --location 'eastasia' \
    --cpu 1 \
    --memory 1 \
    --ports 3000 8000


az container create --resource-group trustnet-covid-initiative --name verifier-agent-container \
    --image "${REGISTRY_LOGIN_SERVER}/aries-verifier-agent-image:latest" \
    --registry-login-server "${REGISTRY_LOGIN_SERVER}" \
    --registry-username ${REGISTRY_USERNAME} \
    --registry-password ${REGISTRY_PASSWORD} \
    --dns-name-label verifier \
    --location 'eastasia' \
    --cpu 1 \
    --memory 1 \
    --ports 3000 8000


az container create --resource-group trustnet-covid-initiative --name accreditor-agent-container \
    --image "${REGISTRY_LOGIN_SERVER}/aries-accreditor-agent-image:latest" \
    --registry-login-server "${REGISTRY_LOGIN_SERVER}" \
    --registry-username ${REGISTRY_USERNAME} \
    --registry-password ${REGISTRY_PASSWORD} \
    --dns-name-label accreditor \
    --location 'eastasia' \
    --cpu 1 \
    --memory 1 \
    --ports 3000 8000