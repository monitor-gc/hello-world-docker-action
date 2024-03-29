# Container image that runs your code
#FROM alpine:3.10
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY python_entrypoint.py /python_entrypoint.py
COPY python_entrypoint.sh /python_entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["/python_entrypoint.sh"]
