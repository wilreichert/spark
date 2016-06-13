FROM jnlp-slave:alpine
MAINTAINER wil@solinea.com

ENV PACKER_URL https://releases.hashicorp.com/packer/0.10.1/packer_0.10.1_linux_amd64.zip

#     usermod -a -G kvm jenkins && \
USER root
RUN apk add unzip qemu py-pip &&\
    curl -o /tmp/packer.zip $PACKER_URL &&\
    unzip /tmp/packer.zip -d /usr/local/bin &&\
    rm /tmp/packer.zip
