FROM ubuntu:18.04
RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install software-properties-common -y && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get update && \
    apt-get install ansible ansible-lint -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    apt-get autoremove
