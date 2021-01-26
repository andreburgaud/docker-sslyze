# Project

Docker project holding a Dockerfile for an SSLyze container.

![Docker Automated build](https://img.shields.io/docker/automated/andreburgaud/sslyze)
[![](https://images.microbadger.com/badges/image/andreburgaud/sslyze.svg)](https://microbadger.com/images/andreburgaud/sslyze)
[![](https://images.microbadger.com/badges/version/andreburgaud/sslyze.svg)](https://microbadger.com/images/andreburgaud/sslyze)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/andreburgaud/sslyze/4.0.1)


# SSLyze

SSLyze is a fast and powerful SSL/TLS server scanning library. it is available
on GitHub at https://github.com/nabla-c0d3/sslyze. It is distributed under the
AGPL license since version 1.3.2 (was distributed under the GPL v2 license until
version 1.3.1).

# Pull SSLyze image

```
$ docker pull andreburgaud/sslyze
```

# Execute SSLyze Help

```
$ docker run --rm andreburgaud/sslyze --help
```

# Execute SSLyze against a public site

```
$ docker run --rm andreburgaud/sslyze --regular google.com
```

# Testing SSL 1.3

```
$ docker run --rm andreburgaud/sslyze --tlsv1_3 www.cloudflare.com
```

# Start a Bash shell

```
$ docker run -it --rm andreburgaud/sslyze sh
/# sslyze --help
/# sslyze --regular google.com
```

# Build a new image

Change the SSLyze version in:

1. Dockerfile
1. Makefile

```
$ make build
```
