#!/bin/bash

ACTION="$1"

function build_slaves() {
  SLAVES="jnlp-slave-docker jnlp-slave-kube jnlp-slave-packer jnlp-slave-php"
  for SLAVE in $SLAVES; do
    docker build -t ${SLAVE}:latest ${SLAVE}/
  done
}

echo -e "Validating docker setup\n"
docker info
[[ $? -ne 0 ]] && exit 1

BASE_URL="https://github.com/docker/compose/releases/download"
VER="1.7.1"
OS="$(uname -s)"
ARCH="$(uname -m)"
DL_URL="$BASE_URL/$VER/docker-compose-$OS-$ARCH"

if [ ! -f docker-compose ]; then
  echo -e "\nDownloading docker-compose"
  curl -s -L -o docker-compose $DL_URL
  chmod +x docker-compose
fi

case $ACTION in
  up|down|build)
    ./docker-compose $ACTION
    [[ "$ACTION" == "build" ]] && build_slaves
    ;;
  *)
    echo -e "\n./cicd up | down"
    ;;
esac
