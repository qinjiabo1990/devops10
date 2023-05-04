#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Building image ..."
docker build -t mydemo .

echo "Running container"
docker run -d --rm -p 80:5000 --name demoapp mydemo