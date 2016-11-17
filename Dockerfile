FROM jupyter/minimal-notebook:23dbbebddc3d

MAINTAINER Ryoma Kawajiri <ryoma.edison@gmail.com>

USER root

# Install Docker
RUN set -ex\
 && apt-get update\
 && apt-get install -y --no-install-recommends\
    apt-transport-https\
    ca-certificates\
 && apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D\
 && echo "deb https://apt.dockerproject.org/repo debian-jessie main" | tee /etc/apt/sources.list.d/docker.list\
 && apt-get update\
 && apt-cache policy docker-engine\
 && apt-get update\
 && apt-get install -y --no-install-recommends\
    docker-engine\
 && apt-get clean\
 && rm -rf /var/lib/apt/lists/*
