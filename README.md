# COV-ID Cloud Agents

A collection of hyperledger aries cloud-agent to issue or verify COVID-19 vaccination digital verifiable credentials.

# Agents

- **Issuer** _(Issues digital vaccination credential i.e Hospital, Clinic or some Medical Institute)_
- **Verifier** _(Verifies digital vaccination credential i.e Aviation authorities of a country)_
- **Accreditor** _(Organiation that verifies the verifier i.e World Health Organization WHO or some national health entity)_

# Run local dev enviornment

```
git clone https://github.com/TrustNetPK/cov-id-cloud-agent.git
git clone https://github.com/TrustNetPK/aries-cloudagency-python.git
cd cov-id-cloud-agent
docker-compose build
docker-compose up
```

In case of mistake to remove all docker containers and images use following (CAUTION: using following commands will delete all containers and images)

```
docker stop $(docker ps -aq) #stops all containers
docker rm $(docker ps -aq) #removes all containers
docker rmi $(docker images -q) #removes all images

#also remove network created by docker-compose yml
docker network ls
docker network rm <NETWORK NAME>
```

# Usage

## For agents

> Use X-API-Key = 'secret' in header to access swagger

- Issuer agent: http://localhost:3000
- Verifier agent: http://localhost:4000
- Prover agent: http://localhost:5000
- Accreditor agent: http://localhost:2000

## For agency

See usage section of: https://github.com/TrustNetPK/aries-cloudagency-python

Deploy the dockerfile to cloud of your choice for either Issuer, Verifier or Accreditor based on your role in the digital trust ecosystem. To run locally use the provided bash scripts or build the docker file.

# Look at API documentation here

https://documenter.getpostman.com/view/8801337/SztEb7jT

# License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a> by TrustNet Pakistan.
