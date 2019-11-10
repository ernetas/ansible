FROM ubuntu:latest
RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install software-properties-common -y && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get update && \
    apt-get install ansible -y
