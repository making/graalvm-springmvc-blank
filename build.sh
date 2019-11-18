#!/bin/bash

docker run --rm \
           -v "$PWD":/usr/src \
           -v "$HOME/.m2":/root/.m2 \
           -w /usr/src \
           oracle/graalvm-ce:19.2.1 \
           ./mvnw package -Pgraal
