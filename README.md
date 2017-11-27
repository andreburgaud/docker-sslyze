# Project

Docker project holding a Dockerfile for an SSLyze container.

[![Docker Pulls](https://img.shields.io/docker/pulls/andreburgaud/sslyze.svg)](https://hub.docker.com/r/andreburgaud/sslyze/)

[![Docker Automated Build](https://img.shields.io/docker/automated/andreburgaud/sslyze.svg)](https://hub.docker.com/r/andreburgaud/sslyze/)

[![Docker Build Status](https://img.shields.io/docker/build/andreburgaud/sslyze.svg)](https://hub.docker.com/r/andreburgaud/sslyze/)

# SSLyze

SSLyze is a fast and powerful SSL/TLS server scanning library. it is available
on GitHub at https://github.com/nabla-c0d3/sslyze. It is distributed under a
GPL v2 license.

# Pull SSLyze image

```
$ docker pull andreburgaud/sslyze
```

# Execute SSLyze Help

```
$ docker run -it --rm andreburgaud/sslyze sslyze --help
```

# Execute SSLyze against a public site

```
$ docker run -it --rm andreburgaud/sslyze sslyze --regular google.com
```

# Default Image Command (Bash shell)

```
$ docker run -it --rm andreburgaud/sslyze
/# sslyze --help
/# sslyze --regular google.com
/# sslyze --regular --tlsv1_3 tls13.cloudflare.com
```
