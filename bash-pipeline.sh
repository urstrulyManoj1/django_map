#!/bin/bash

# Stage 1: Checkout
echo "Stage 1: Checking out the repository"
git clone https://github.com/urstrulyManoj1/django_map.git /var/lib/jenkins/workspace/django_map
cd /var/lib/jenkins/workspace/django_map || exit

# Stage 2: Build Docker Image
echo "Stage 2: Building Docker image"
docker build -t my-django-app .

# Stage 3: Run Docker Container
echo "Stage 3: Running Docker container"
docker run -d -p 8000:8000 my-django-app
