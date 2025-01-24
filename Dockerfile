# syntax=docker/dockerfile:1@sha256:93bfd3b68c109427185cd78b4779fc82b484b0b7618e36d0f104d4d801e66d25
FROM ubuntu:noble@sha256:80dd3c3b9c6cecb9f1667e9290b3bc61b78c2678c02cbdae5f0fea92cc6734ab

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -yqq --no-install-recommends \
      curl bash git ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://get.trunk.io -fsSL | bash -s -- -y
