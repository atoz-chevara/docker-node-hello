# Node.js Hello World

Node.js Hello World on Raspbian using [docker][].

## Prerequisites

- [Node.js & npm][node-js-download]

## Getting Started

-   Build docker image:

        make build
        # docker build -t atoz/raspbian-node-hello .


-   Run app:

        make run-container
        # docker run -p 49160:8080 -d atoz/raspbian-node-hello

-   Install `curl`:

        sudo apt-get install curl

-   Get mapped port (last column) using, e.g. 49160:

        docker ps

        > # Example
        > CONTAINER ID        IMAGE                       COMMAND                  CREATED             STATUS              PORTS                     NAMES
        > 27969a4a453e        atoz/raspbian-node-hello    "/usr/bin/entry.sh no"   42 seconds ago      Up 39 seconds       0.0.0.0:49160->8080/tcp   elated_knuth


-   Test app using the port in previous step, e.g. 49160:

        curl localhost:<port>

        # Example
        # curl localhost:49163

    It should print `Hello World` to the console.

## Acknowledgements

Many thanks to @gasi and @enokd for their source code.

[node-js-download]: http://nodejs.org/download/
[docker]: http://docker.io
