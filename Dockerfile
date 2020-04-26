FROM bcgovimages/von-image:py36-1.14-1

RUN pip install aries-cloudagent

ENTRYPOINT ["/bin/bash", "-c", "aca-py start  --inbound-transport http 0.0.0.0 8000 \
    --outbound-transport http \
    --admin 0.0.0.0 3000 \
    --admin-api-key 123456", "--"]