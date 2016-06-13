FROM jnlp-slave:alpine
MAINTAINER wil@solinea.com

ENV DOCKER_URL https://get.docker.com/builds/Linux/x86_64/docker-1.11.0.tgz

USER root
RUN cd /usr/local &&\
    curl -s $DOCKER_URL | tar -xz &&\
    ln -s /usr/local/docker/docker /usr/local/bin/docker
