#!/bin/bash

IMAGE='chinhlc/ubuntu'
echo "Start build $IMAGE image"
docker build -t  $IMAGE .