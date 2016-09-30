#!/bin/bash 

docker build -t cpu-limit . 
docker create --name cpu-limit cpu-limit
docker cp cpu-limit:/tmp/libjvm-cpu-limit.so .
docker rm cpu-limit
