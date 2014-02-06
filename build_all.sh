#!/usr/bin/env bash

cd $(dirname $0) # switch to root directory

for file in `find * -name Dockerfile`
do
    image_name=$(dirname $file)
    docker build -t bacongobbler/$image_name $image_name
done
