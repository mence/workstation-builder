#!/bin/bash

echo "Installing Docker apps..."

echo "> Jess Frazelle's Dockerfiles - https://github.com/jessfraz/dockerfiles"
docker pull jess/routersploit # https://github.com/jessfraz/dockerfiles/blob/master/routersploit/Dockerfile
docker pull jess/metasploit # https://github.com/jessfraz/dockerfiles/tree/master/metasploit
# docker pull jess/travis # https://github.com/jessfraz/dockerfiles/blob/master/travis/Dockerfile
# docker pull jess/powershell # https://github.com/jessfraz/dockerfiles/blob/master/powershell/Dockerfile
docker pull jess/beeswithmachineguns # https://github.com/jessfraz/dockerfiles/blob/master/beeswithmachineguns/Dockerfile

echo "> Portainer - https://github.com/portainer/portainer"
docker pull portainer/portainer
# docker run -d -p 9000:9000 portainer/portainer

echo "> Docker Bench for Security - https://github.com/docker/docker-bench-security"
docker pull docker/docker-bench-security
# docker run -it --net host --pid host --cap-add audit_control \
#     -e DOCKER_CONTENT_TRUST=$DOCKER_CONTENT_TRUST \
#     -v /var/lib:/var/lib \
#     -v /var/run/docker.sock:/var/run/docker.sock \
#     -v /usr/lib/systemd:/usr/lib/systemd \
#     -v /etc:/etc --label docker_bench_security \
#     docker/docker-bench-security

echo "> Jenkins Blue Ocean"
docker pull jenkinsci/blueocean:latest
# docker run -p 8888:8080 jenkinsci/blueocean:latest

echo "> VerneMQ - https://vernemq.com/docs/installation/docker.html"
docker pull erlio/docker-vernemq
# docker run -e "DOCKER_VERNEMQ_ALLOW_ANONYMOUS=on" --name vernemq1 -d erlio/docker-vernemq # DOCKER_VERNEMQ_ALLOW_ANONYMOUS allows any client to access the broker unauthenticated
## Autojoining a VerneMQ cluster:
# docker run -e "DOCKER_VERNEMQ_DISCOVERY_NODE=<IP-OF-VERNEMQ1>" --name vernemq2 -d erlio/docker-vernemq
## Checking a VerneMQ cluster's status
# docker exec vernemq1 vmq-admin cluster status
