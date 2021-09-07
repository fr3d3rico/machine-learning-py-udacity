#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=udacity-ml-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-ml-api -it --image=fr3d3rico/udacity-ml-api:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose pod udacity-ml-api --type=LoadBalancer --port=80
kubectl port-forward service/udacity-ml-api 8000:80
