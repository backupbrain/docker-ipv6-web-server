# docker-ipv6-web-server
Test ipv6 binding for a webserver inside Docker.

The goal of this project is to test bridging an IPv6-hosted website inside Docker through a server's IPv6 so that services offered inside the Docker container are available on the Internet.

We have a simple Express.js web server running on localhost:3000.

## Setup

Build Docker image:

```
$ docker build . -t test-server
```

## Running

```
$ docker run -it test-server
```
