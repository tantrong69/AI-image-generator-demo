# Base image -> https://github.com/runpod/containers/blob/main/official-templates/base/Dockerfile
# DockerHub -> https://hub.docker.com/r/runpod/base/tags
FROM runpod/base:0.4.0-cuda11.8.0

RUN python3.11 -m pip install --upgrade pip

RUN python3.11 /handler.py

CMD python3.11 -u /handler.py
