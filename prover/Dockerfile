FROM bcgovimages/von-image:py36-1.14-1

ARG PROVER_SEED
ARG PROVER_AGENT_ENDPOINT
ARG PROVER_WALLET_KEY
ARG PROVER_ADMIN_API_KEY
ARG GENESIS_URL
ARG INBOUND_PORT
ARG API_PORT

ENV SEED=$PROVER_SEED
ENV AGENT_ENDPOINT=$PROVER_AGENT_ENDPOINT
ENV WALLET_KEY=$PROVER_WALLET_KEY
ENV ADMIN_API_KEY=$PROVER_ADMIN_API_KEY
ENV GENESIS=$GENESIS_URL
ENV AGENT_INBOUND_PORT=$INBOUND_PORT
ENV ADMIN_API_PORT=$API_PORT

RUN pip install aries-cloudagent==0.5.3

ENTRYPOINT ["/bin/bash", "-c", "aca-py start  --inbound-transport http 0.0.0.0 $AGENT_INBOUND_PORT \
    --outbound-transport http \
    --admin 0.0.0.0 $ADMIN_API_PORT \
    --seed $SEED \
    --endpoint $AGENT_ENDPOINT \
    --wallet-key $WALLET_KEY \
    --wallet-name VaxCertPROVER \
    --wallet-type indy \
    --label CertPROVER \
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
    --enable-undelivered-queue \
    --genesis-url $GENESIS", "--"]