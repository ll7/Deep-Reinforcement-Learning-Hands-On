#!/bin/bash

# fail on error
set -e

echo "copy requirements"
cp ../requirements.txt .

echo "build image"
docker build -t deep_rl . 

echo "remove requirements"
rm requirements.txt