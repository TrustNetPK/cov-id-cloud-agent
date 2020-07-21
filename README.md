# COV-ID Cloud Agents
A collection of hyperledger aries cloud-agent to issue or verify COVID-19 vaccination digital verifiable credentials.

# Agents
- **Issuer** *(Issues digital vaccination credential i.e Hospital, Clinic or some Medical Institute)*
- **Verifier** *(Verifies digital vaccination credential i.e Aviation authorities of a country)*
- **Accreditor** *(Organiation that verifies the verifier i.e World Health Organization WHO or some national health entity)*

# Run local dev enviornment
```
git clone https://github.com/TrustNetPK/cov-id-cloud-agent.git
cd cov-id-cloud-agent
docker-compose build
docker-compose up
```

> Use X-API-Key = 'secret' in header to access swagger

- Issuer agent: http://localhost:3000
- Verifier agent: http://localhost:4000
- Prover agent: http://localhost:5000
- Accreditor agent: http://localhost:2000

Deploy the dockerfile to cloud of your choice for either Issuer, Verifier or Accreditor based on your role in the digital trust ecosystem. To run locally use the provided bash scripts or build the docker file.

# Look at API documentation here
https://documenter.getpostman.com/view/8801337/SztEb7jT


# License
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a> by TrustNet Pakistan.
