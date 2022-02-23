FROM ubuntu:rolling
RUN apt-get update -qq && apt install -y unzip ssh software-properties-common && add-apt-repository --yes --update ppa:ansible/ansible && apt-get update -qq && apt-get install -y ansible
