install:
        npm install

build:
        docker build -t atoz/raspbian-node-hello .

run:
        node index.js

run-container:
        docker run -p 49160:8080 -d atoz/raspbian-node-hello

test:
        curl localhost

clean:
        rm -rf node_modules


.PHONY: install build run test clean
