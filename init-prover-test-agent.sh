# Verifier Provisioning
export SEED="000000000000000000000002SomeSeed"
export AGENT_ENDPOINT="http://localhost:7000"
export WALLET_KEY="7hflfbfX371f"
export ADMIN_API_KEY="secret"

export GENESIS="http://greenlight.bcovrin.vonx.io/genesis"

export AGENT_INBOUND_PORT=7000
export ADMIN_API_PORT=2000

aca-py start  --inbound-transport http 0.0.0.0 $AGENT_INBOUND_PORT \
    --outbound-transport http \
    --admin 0.0.0.0 $ADMIN_API_PORT \
    --seed $SEED \
    --endpoint $AGENT_ENDPOINT \
    --wallet-key $WALLET_KEY \
    --wallet-name VaxCertProver \
    --wallet-type indy \
    --label Prover \
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
    --genesis-url $GENESIS