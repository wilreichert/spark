FROM jenkinsci/jnlp-slave
MAINTAINER wil@solinea.com

USER root
RUN curl https://storage.googleapis.com/kubernetes-release/release/v1.2.0/bin/linux/amd64/kubectl -o /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl
