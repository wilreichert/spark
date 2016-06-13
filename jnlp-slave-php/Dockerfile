FROM jenkinsci/jnlp-slave
MAINTAINER wil@solinea.com

USER root
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install php5-cli && \
    apt-get clean
