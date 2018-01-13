#!/bin/bash
gcloud compute instances create reddit-app --boot-disk-size=10GB --image-family reddit-base --machine-type=g1-small --zone europe-west1-b --tags http-server,puma-server --restart-on-failure
