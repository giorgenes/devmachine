#!/bin/bash

# work files
mkdir -p $HOME/work/project1

# code server
sudo docker pull codercom/code-server
sudo docker run -d -p 127.0.0.1:8443:8443 -v "${PWD}/work/project1:/home/coder/project" codercom/code-server --allow-http --no-auth

exit 0