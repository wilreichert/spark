## Jenkins docker customizations

This is a modified jenkins container with the following modifications

* master executors set to 0.  All jobs run on slaves

* the following plugins have been added
 * Ansicolor
 * Artifactory
 * Docker
 * GitHub Pull Request Builder
 * Gitlab Plugin
 * Green Balls
 * Jira
 * Kubernetes
 * Parameterized Trigger
 * Post Build Script
 * SCM Sync Config
 * Slack
