#!/bin/bash

# Retrieve the latest tag number from Docker Hub
url="https://hub.docker.com/v2/repositories/meir215/hello_world/tags/"
TAG=$(curl -s $url | jq -r '.results[].name')
echo "$TAG"

# Replace the existing tag number in your Helm values file with the latest tag number
sed -i "s/tag: .*/tag: $TAG/g" values.yaml
