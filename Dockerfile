FROM quay.io/nordstrom/baseimage-ubuntu:16.04
MAINTAINER Kubernetes Platform Team "techk8s@nordstrom.com"

RUN apt-get update && apt-get install -y \
  build-essential \
