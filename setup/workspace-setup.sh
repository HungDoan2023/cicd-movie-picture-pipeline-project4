#!/bin/bash
set -e

# Source this so that nvm works
. ~/.nvm/nvm.sh

project_dir=$(pwd)

echo "Configuring backend-service application"
cd backend
echo "Cleaning backend-service environment..."
pipenv --rm > /dev/null 2>&1 || true
echo "Done with cleanup!"

echo "Installing backend-service dependencies..."
pipenv install > /dev/null 2>&1
echo "Done configuring backend-service!"
cd $project_dir

echo "Configuring frontend-service application"
cd frontend
echo "Cleaning frontend-service environment..."
npm run clean > /dev/null 2>&1

echo "Installing frontend-service dependencies..."
nvm install > /dev/null 2>&1
npm ci --silent > /dev/null 2>&1
echo "Done configuring frontend-service!"
cd $project_dir

echo "Done setting up workspace 🚀"