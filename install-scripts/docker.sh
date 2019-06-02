#!/bin/bash

# docker
# https://phoenixnap.com/kb/how-to-install-docker-on-ubuntu-18-04
sudo apt-get -yq remove docker docker-engine docker.io
sudo apt -yq install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker $USER
