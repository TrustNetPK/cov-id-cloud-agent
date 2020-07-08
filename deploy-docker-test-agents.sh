# Issuer & Verifier Provisioning
export ISSUER_SEED="000000000000000000000000SomeSeed"
export ISSUER_AGENT_ENDPOINT="http://localhost:8000"
export ISSUER_WALLET_KEY="Xaff17iH1MNc"
export ISSUER_ADMIN_API_KEY="secret"

export VERIFIER_SEED="000000000000000000000001SomeSeed"
export VERIFIER_AGENT_ENDPOINT="http://localhost:9000"
export VERIFIER_WALLET_KEY="5UVlxFfX041L"
export VERIFIER_ADMIN_API_KEY="secret"

export GENESIS_URL="http://greenlight.bcovrin.vonx.io/genesis"

export ISSUER_INBOUND_PORT=8000
export ISSUER_API_PORT=3000
export VERIFIER_INBOUND_PORT=9000
export VERIFIER_API_PORT=4000


#TODO: Add Prover and Accreditor

docker build --build-arg INBOUND_PORT=$ISSUER_INBOUND_PORT --build-arg API_PORT=$ISSUER_API_PORT --build-arg API_KEY=$ISSUER_ADMIN_API_KEY --build-arg ISSUER_SEED=$ISSUER_SEED --build-arg ISSUER_AGENT_ENDPOINT=$ISSUER_AGENT_ENDPOINT --build-arg ISSUER_WALLET_KEY=$ISSUER_WALLET_KEY --build-arg GENESIS_URL=$GENESIS_URL -f Dockerfile.local  -t aries-issuer-agent .
docker build --build-arg INBOUND_PORT=$VERIFIER_INBOUND_PORT --build-arg API_PORT=$VERIFIER_API_PORT --build-arg API_KEY=$VERIFIER_ADMIN_API_KEY --build-arg VERIFIER_SEED=$VERIFIER_SEED --build-arg VERIFIER_AGENT_ENDPOINT=$VERIFIER_AGENT_ENDPOINT --build-arg VERIFIER_WALLET_KEY=$VERIFIER_WALLET_KEY --build-arg GENESIS_URL=$GENESIS_URL -f Dockerfile.local  -t aries-verifier-agent .

docker run -itd -p 3000:3000 -p 8000:8000 aries-issuer-agent
docker run -itd -p 4000:4000 -p 9000:9000 aries-verifier-agent