#!/bin/bash
set -e

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
docker push hoangcongst/maven-aws-cli:latest;
docker push hoangcongst/maven-aws-cli:"$RELEASE";