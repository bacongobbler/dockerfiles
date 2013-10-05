#!/bin/bash

name=$(whoami)

for file in *.dock
do
    filename=$(echo ${file%.*})
    docker build -t $name/$filename - < $file
done
