#!/bin/bash

# add dev user to sudoers
echo "dev ALL=(ALL) NOPASSWD: ALL" > devsudoer
chmod 0440 devsudoer
echo "dev" | sudo -S chown root:root $HOME/devsudoer 
echo "dev" | sudo -S mv $HOME/devsudoer /etc/sudoers.d
