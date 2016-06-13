FROM docker
MAINTAINER wil@solinea.com

RUN apk update && \
    apk upgrade && \
    apk add openjdk8-jre-base && \
    apk add git && \
    apk add openssh-client && \
    curl -sSLo /usr/local/bin/docker https://get.docker.com/builds/Linux/x86_64/docker-1.9.1 && \
    chmod 755 /usr/local/bin/docker && \
    curl --create-dirs -sSLo /usr/share/jenkins/slave.jar http://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/2.52/remoting-2.52.jar && \
    chmod 755 /usr/share/jenkins && \
    chmod 644 /usr/share/jenkins/slave.jar

COPY jenkins-slave /usr/local/bin/jenkins-slave

WORKDIR /root
ENTRYPOINT ["jenkins-slave"]
