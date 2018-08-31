#!/bin/bash

echo "Running Google Cloud installation steps..."

gcloud installation
gcloud components update
gcloud components install beta
gcloud components install kubectl
gcloud components install alpha
gcloud components install docker-credential-gcr

gcloud auth login
gcloud auth application-default login
gcloud auth configure-docker

gcloud compute project-info add-metadata --metadata google-compute-default-region=australia-southeast1,google-compute-default-zone=australia-southeast1-c

# https://cloud.google.com/container-registry/docs/advanced-authentication
docker-credential-gcr configure-docker
docker-credential-gcr gcr-login
