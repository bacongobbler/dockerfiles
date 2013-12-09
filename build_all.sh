#!/bin/bash

for file in *.dock
do
    filename=$(echo ${file%.*})
    docker build -t bacongobbler/$filename - < $file
done
