FROM bcgovimages/von-image:py36-1.14-1

ARG VERIFIER_SEED
ARG VERIFIER_AGENT_ENDPOINT
ARG VERIFIER_WALLET_KEY
ARG VERIFIER_ADMIN_API_KEY
ARG GENESIS_URL
ARG INBOUND_PORT
ARG API_PORT

ENV SEED=$VERIFIER_SEED
ENV AGENT_ENDPOINT=$VERIFIER_AGENT_ENDPOINT
ENV WALLET_KEY=$VERIFIER_WALLET_KEY
ENV ADMIN_API_KEY=$VERIFIER_ADMIN_API_KEY
ENV GENESIS=$GENESIS_URL
ENV AGENT_INBOUND_PORT=$INBOUND_PORT
ENV ADMIN_API_PORT=$API_PORT

RUN pip install aries-cloudagent

ENTRYPOINT ["/bin/bash", "-c", "aca-py start  --inbound-transport http 0.0.0.0 $AGENT_INBOUND_PORT \
    --outbound-transport http \
    --admin 0.0.0.0 $ADMIN_API_PORT \
    --seed $SEED \
    --endpoint $AGENT_ENDPOINT \
    --wallet-key $WALLET_KEY \
    --wallet-name VaxCertVerifier \
    --wallet-type indy \
    --admin-api-key $ADMIN_API_KEY \
    --auto-accept-invites \
    --auto-accept-requests \
    --auto-respond-messages \
    --auto-respond-credential-proposal \
    --auto-respond-credential-offer \
    --auto-respond-credential-request \
    --auto-respond-presentation-proposal \
    --auto-respond-presentation-request \
    --auto-store-credential \
    --auto-verify-presentation \
    --enable-undelivered-queue \
    --genesis-url $GENESIS", "--"]