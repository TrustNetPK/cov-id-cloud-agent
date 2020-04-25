export INBOUND_PORT=8000
export API_PORT=3000
export API_KEY="<secret key>"

docker build --build-arg INBOUND_PORT=$INBOUND_PORT --build-arg API_PORT=$API_PORT --build-arg API_KEY=$API_KEY -f Dockerfile  -t aries-issuer-agent .
docker run -itd -p 3000:3000 -p 8000:8000 aries-issuer-agent
