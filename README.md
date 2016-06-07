# cloud.gov Docker Swarm Broker deployment

This repo contains the [Concourse](http://concourse.ci/) pipeline and [BOSH](https://bosh.io) manifests for deploying the [Docker Swarm Broker](https://github.com/cloudfoundry-community/docker-boshrelease) to [cloud.gov](https://cloud.gov/).

## Usage

1. Create a secrets file (below), or get a copy from another cloud.gov team member.

    ```bash
    cp concourse/credentials.example.yml concourse/credentials.yml
    ```

1. Add pipeline to concourse.

    ```bash
    fly -t <my-target> set-pipeline -p deploy-docker-swarm -c concourse/pipeline.yml -l concourse/credentials.yml
    ```

Note: Releases for docker, newrelic, and collectd must be uploaded to bosh before running pipelines; see [bosh/deployment.yml](bosh/deployment.yml) for release versions.
