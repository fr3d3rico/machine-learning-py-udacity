#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=fr3d3rico/udacity-ml-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u fr3d3rico -p XXXXXX
docker tag udacity-ml-api fr3d3rico/udacity-ml-api:latest

# Step 3:
# Push image to a docker repository
docker push fr3d3rico/udacity-ml-api:latest