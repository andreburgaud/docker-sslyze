# Project

Docker project holding a Dockerfile for an SSLyze container.

[![Docker Pulls](https://img.shields.io/docker/pulls/andreburgaud/sslyze.svg)](https://hub.docker.com/r/andreburgaud/sslyze/)
[![Docker Automated Build](https://img.shields.io/docker/automated/andreburgaud/sslyze.svg)](https://hub.docker.com/r/andreburgaud/sslyze/)
[![Docker Build Status](https://img.shields.io/docker/build/andreburgaud/sslyze.svg)](https://hub.docker.com/r/andreburgaud/sslyze/)
[![Layers](https://images.microbadger.com/badges/image/andreburgaud/sslyze.svg)](https://microbadger.com/images/andreburgaud/sslyze)
[![Version](https://images.microbadger.com/badges/version/andreburgaud/sslyze.svg)](https://microbadger.com/images/andreburgaud/sslyze)

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
$ docker run -it --rm andreburgaud/sslyze --help
```

# Execute SSLyze against a public site

```
$ docker run -it --rm andreburgaud/sslyze --regular google.com
```

# Start a Bash shell

```
$ docker run -it --rm andreburgaud/sslyze sh
/# sslyze --help
/# sslyze --regular google.com
```
