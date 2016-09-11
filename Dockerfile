# VERSION 0.1
# DOCKER-VERSION 1.12.1
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:atoz-chevara/rpi-node-hello.git
# 3. Build container: docker build .

# Set the base image
FROM resin/rpi-raspbian:jessie

# File Author / Maintainer
MAINTAINER Izharul Haq <atoz.chevara@yahoo.com>

RUN [ "cross-build-start" ]

ENV LANG C.UTF-8

## BEGIN INSTALLATION

# install required packages
RUN apt-get update && install -y wget dialog npm && apt-get -y clean

# install nodejs
RUN npm install -g n
RUN n stable

# Copy node.js script
COPY . /src
RUN cd /src; npm install

## IMAGE CONFIGURATION

# Expose HTTP
EXPOSE 8080

# run application
CMD ["node", "/src/index.js"]

RUN [ "cross-build-end" ]
