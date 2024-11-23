FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y curl build-essential
RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y
ENV ROOT /workspace
WORKDIR $ROOT