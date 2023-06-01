#!/bin/bash

# Export .NET tools to path
export PATH="$PATH:/root/.dotnet/tools"

# Login to Moxehub's Docker Hub
docker login -u "$DOCKER_HUB_USERNAME" -p "$DOCKER_HUB_PASSWORD"

# Build the Docker image
docker build -t moxehubrevvy/revvy-pipeline:1.0 .

# Push to Docker Hub
docker push moxehubrevvy/revvy-pipeline:1.0 