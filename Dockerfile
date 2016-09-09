# VERSION 0.1
# DOCKER-VERSION 1.12.1
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:atoz/docker-node-hello.git
# 3. Build container: docker build .

FROM resin/rpi-raspbian

# install required packages
RUN apt-get update
RUN apt-get install -y wget dialog npm

# install nodejs
RUN npm install -g n
RUN n stable

COPY . /src
RUN cd /src; npm install

# run application
EXPOSE 8080
CMD ["node", "/src/index.js"]
