# cloud.gov Docker Swarm Broker deployment

This repo contains the [Concourse](http://concourse.ci/) pipeline and [BOSH](https://bosh.io) manifests for deploying the [Docker Swarm Broker](https://github.com/cloudfoundry-community/docker-boshrelease) to [cloud.gov](https://cloud.gov/).

## Usage

1. Install [spiff](https://github.com/cloudfoundry-incubator/spiff).
1. Create a secrets file (below), or get a copy from another cloud.gov team member.

    ```bash
    cp secrets.example.yml secrets.staging.yml
    ```

1. Fill in [`secrets.staging.yml`](secrets.example.yml).
1. Generate the final BOSH manifest.

    ```bash
    ./generate.sh staging
    ```

This will produce a `manifest.staging.yml` file, which can be deployed with BOSH. Note that you can do all of these steps using `production` instead of `staging`.
