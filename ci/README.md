# Docker Swarm broker deployment

This folder contains the [Concourse](http://concourse.ci/) pipeline to deploy the [Cloud Foundry Docker Swarm broker](https://github.com/cloudfoundry-community/docker-boshrelease/blob/master/SWARM.md) to cloud.gov.

There are old instructions [docs.cloud.gov](https://docs.cloud.gov/ops/deploying-the-docker-broker/), which this should deprecate.

## Usage

1. Create a secrets file.

    ```bash
    cp credentials.example.yml credentials.yml
    ```

1. Modify the [`credentials.yml`](credentials.example.yml) (or get a copy from an 18F teammate).
1. Deploy the pipeline.

    ```bash
    fly -t cloud set-pipeline -n -c pipeline.yml -p deploy-docker-swarm-broker -l credentials.yml
    ```
