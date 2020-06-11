#!/bin/bash

sudo docker build --no-cache -f Dockerfile.tensorflow -t odyssee/dl-benchmark:latest .
