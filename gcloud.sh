#!/bin/bash

echo "Running Google Cloud installation steps..."

gcloud installation
gcloud components update
gcloud components install beta
gcloud components install kubectl

gcloud auth login
gcloud auth application-default login

gcloud compute project-info add-metadata --metadata google-compute-default-region=australia-southeast1,google-compute-default-zone=australia-southeast1-c
