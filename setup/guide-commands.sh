#!/bin/bash
CLUSTER_NAME=cluster
REGION=us-east-1

# Jump into setup/terraform directory
terraform init

# Waiting for terraform init finish, then execute
terraform apply

# Waiting for terraform apply finish, then execute
terraform output

# Update kubeconfig
aws eks --region "$REGION" update-kubeconfig --name "$CLUSTER_NAME"

# Delete eks when not use
## eksctl delete cluster --name "$CLUSTER_NAME" --region "$REGION"

# Once creating cluster finish, we are able to list out the whole services
kubect get services

# List out all pods
kubectl get pods

# List out all deployments
kubectl get deployments

# Display describe deployment
kubectl describe deployment deployment_name

# Display describe service
kubectl describe service service_name
