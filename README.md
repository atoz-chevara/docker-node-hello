# Node.js Hello World

Node.js Hello World on Raspbian using [docker][].

## Prerequisites

- [Node.js & npm][node-js-download]

## Getting Started

-   Build docker image:

        make build
        # docker build -t atozchevara/rpi-node-hello:latest .


-   Run app:

        make run-container
        # docker run --name rpi-node-hello -p 49160:8080 -d atozchevara/rpi-node-hello

-   Install `curl`:

        sudo apt-get install curl

-   Get mapped port (last column) using, e.g. 49160:

        docker ps

        > # Example
        > CONTAINER ID        IMAGE                       COMMAND                  CREATED             STATUS              PORTS                     NAMES
        > 99c637eb9c70        atozchevara/rpi-node-hello   "/usr/bin/entry.sh no"   31 seconds ago      Up 28 seconds       0.0.0.0:49160->8080/tcp   rpi-node-hello


-   Test app using the port in previous step, e.g. 49160:

        curl localhost:<port>

        # Example
        # curl localhost:49160

    It should print `Hello World` to the console.

## Acknowledgements

Many thanks to @gasi and @enokd for their source code.

[node-js-download]: http://nodejs.org/download/
[docker]: http://docker.io
