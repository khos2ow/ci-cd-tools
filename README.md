# CI/CD Tools

[![Docker Automated build](https://img.shields.io/docker/automated/khos2ow/ci-cd-tools.svg)](https://hub.docker.com/r/khos2ow/ci-cd-tools/)
[![Docker Build Status](https://img.shields.io/docker/build/khos2ow/ci-cd-tools.svg)](https://hub.docker.com/r/khos2ow/ci-cd-tools/builds/)
[![license](https://img.shields.io/github/license/khos2ow/ci-cd-tools.svg)](https://github.com/khos2ow/ci-cd-tools/blob/master/LICENSE)

Docker images containing essential tools and packages for development, specially to be used as a base working image in various CI/CD pipelines (GitLab CI, Travis CI, ...).

## Table of Contents

- [Supported tags and respective `Dockerfile` links](#supported-tags-and-respective-dockerfile-links)
- [Packges installed in conatiner](#packges-installed-in-conatiner)
- [Docker in Docker tip](#docker-in-docker-tip)
- [License](#license)

## Supported tags and respective `Dockerfile` links

- [`latest` (Dockerfile)](https://github.com/khos2ow/ci-cd-tools/blob/master/Dockerfile)

## Packges installed in conatiner

List of available packages inside the container:

| Package    | Version             |
|------------|---------------------|
| bash       | 4.4.19(1)-release   |
| sudo       | 1.8.21p2            |
| gcc        | 6.4.0               |
| docker     | client: 18.05.0-ce<br />server: 18.03.1-ce  |
| git        | 2.15.2              |
| java       | 1.8.0_151           |
| golang     | _TBA_               |
| ruby       | 2.4.4p296           |
| python     | 2.7.14<br />3.6.3   |
| pip        | 10.0.1              |
| virtualenv | 16.0.0              |
| maven      | 3.5.2               |
| gradle     | 4.8                 |
| openssl    | 1.0.2o              |
| openssh    | 7.5p1-hpn14v4       |
| curl       | 7.60.0              |
| wget       | 1.19.5              |
| rsync      | 3.1.3               |
| tar        | 1.29                |
| gzip       | 1.8                 |
| zip        | 3.0                 |
| vim        | 8.0                 |
| jq         | jq-1.5              |
| locate     | 4.6.0               |
| which      | v2.21               |

## Docker in Docker tip

If you want to use dind with this image you need to pass `/var/run/docker.sock` from host to the container as a Volume:

```bash
docker run --volume /var/run/docker.sock:/var/run/docker.sock khos2ow/ci-cd-tools
```

## License

Licensed under [Apache License version 2.0](http://www.apache.org/licenses/LICENSE-2.0). Please see the [LICENSE](https://github.com/khos2ow/ci-cd-tools/blob/master/LICENSE) file included in the root directory of the source tree for extended license details.
