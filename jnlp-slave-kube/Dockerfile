FROM jnlp-slave:alpine
MAINTAINER wil@solinea.com

ENV KUBE_URL https://storage.googleapis.com/kubernetes-release/release/v1.2.4/bin/linux/amd64/kubectl
USER root
RUN curl $KUBE_URL -o /usr/bin/kubectl &&\
    chmod +x /usr/bin/kubectl
