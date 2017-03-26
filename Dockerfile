FROM quay.io/nordstrom/awscli:1.11.30-1
MAINTAINER Kubernetes Platform Team "techk8s@nordstrom.com"

USER root

RUN apt-get update && apt-get install -y \
  build-essential \
  jq 
  
RUN cp /etc/ssl/nord-ca-certificates/* /etc/ssl/certs/


COPY bin/* bin/

