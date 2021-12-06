#!/bin/bash
set -e

if [[ -z $RELEASE ]]; then
    echo "Error: undefined RELEASE environment variable."
    exit 1
fi

docker build -t hoangcongst/maven-aws-cli:latest .
docker tag hoangcongst/maven-aws-cli:latest hoangcongst/maven-aws-cli:"$RELEASE"