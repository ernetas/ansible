FROM ubuntu:rolling
RUN apt-get update -qq && apt-get install -y unzip ansible ssh
