FROM bcgovimages/von-image:py36-1.14-1

ARG INBOUND_PORT
ARG API_KEY
ARG API_PORT

ENV AGENT_INBOUND_PORT=$INBOUND_PORT
ENV ADMIN_API_KEY=$API_KEY
ENV ADMIN_API_PORT=$API_PORT


RUN pip install aries-cloudagent

ENTRYPOINT ["/bin/bash", "-c", "aca-py start  --inbound-transport http 0.0.0.0 $AGENT_INBOUND_PORT \
    --outbound-transport http \
    --admin 0.0.0.0 $ADMIN_API_PORT \
    --admin-api-key $ADMIN_API_KEY", "--"]