# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5
FROM ubuntu:noble@sha256:80dd3c3b9c6cecb9f1667e9290b3bc61b78c2678c02cbdae5f0fea92cc6734ab

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -yqq --no-install-recommends \
      curl bash git ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://get.trunk.io -fsSL | bash -s -- -y
