FROM quay.io/nordstrom/awscli:1.11.30-1
MAINTAINER Kubernetes Platform Team "techk8s@nordstrom.com"

USER root
RUN cp /etc/ssl/nord-ca-certificates/* /etc/ssl/certs/
RUN apt-get update && apt-get install -y \
  build-essential \
  jq\
  unzip
  
RUN curl https://releases.hashicorp.com/terraform/0.9.1/terraform_0.9.1_linux_amd64.zip?_ga=1.157650175.450801981.1484054819 > tf.zip
RUN unzip tf.zip && mv terraform /bin && rm tf.zip

COPY bin/* bin/

