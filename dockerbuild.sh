#!/bin/bash

# Set image name and tag
IMAGE_NAME="nguyr/my-streamlit-app"
TAG="latest"

# Build the image for the linux/amd64 platform
echo "Building Docker image for platform linux/amd64..."
docker build --platform linux/amd64 -t $IMAGE_NAME:$TAG .

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "Build successful! Now pushing the image to Docker Hub..."
    docker push $IMAGE_NAME:$TAG
else
    echo "Build failed. Please check the error messages above."
    exit 1
fi

echo "Docker image pushed to Docker Hub: $IMAGE_NAME:$TAG"