FROM ubuntu:rolling
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && \
    apt install -y \
      unzip \
      git \
      ssh \
      software-properties-common \
      python3-boto3 \
      && \
    add-apt-repository --yes --update ppa:ansible/ansible && \
    apt-get update -qq && \
    apt-get install -y ansible
