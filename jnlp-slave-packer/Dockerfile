FROM jenkinsci/jnlp-slave
MAINTAINER wil@solinea.com

USER root
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y unzip curl qemu python-glanceclient && \
    usermod -a -G kvm jenkins && \
    curl -o /tmp/packer.zip https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip && \
    unzip /tmp/packer.zip -d /usr/local/bin && \
    rm /tmp/packer.zip && \
    apt-get clean
