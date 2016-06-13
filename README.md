Science experiment to see how quickly you can get a fully configured CICD toolchain running in containers.

# Design

Using docker / docker-compose for easy setup.

Currently Leveraging
* GitLab
* Jenkins
* Artifactory
* Jira

# Usage

./cicd.sh up|down|build

Does a check to make sure docker is working, then pulls docker-compose (mac / linux).

* up|down - just a passthrough to docker-compose
* build
  * builds a number of custom build slaves
  * build jenkins pre-loaded with plugins

# TODO:
* Add something better than names volumes for docker storage
* auto-configuration
* terraform?
* kubernetes?
* evaulate different infra
