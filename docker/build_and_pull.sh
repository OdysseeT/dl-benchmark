#!/bin/bash

sudo docker build -f Dockerfile.tensorflow -t odyssee/dl-benchmark:latest .
sudo docker push odyssee/dl-benchmark:latest
