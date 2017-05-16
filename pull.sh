#!/bin/bash

for image in $(find ./ -maxdepth 1 -type d -not -name ".*" -printf '%f\n'); do
    docker pull n0ts/$image:latest
done
