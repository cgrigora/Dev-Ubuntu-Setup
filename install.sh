#!/bin/bash
#Fastit Development Machine Setup on Ubuntu
sudo apt-get update

# Installing build essentials
sudo apt-get --assume-yes install build-essential libssl-dev

# Vim, Curl, Python - useful stuff
sudo apt-get --assume-yes install vim curl python-software-properties
sudo apt-get --assume-yes install python-pip python-dev build-essential
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv
sudo apt-get --assume-yes install libkrb5-dev

# Virtualbox
sudo apt-get --assume-yes install virtualbox

# NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
sudo nvm install node
sudo nvm use node
node -v

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get --assume-yes install yarn

# Git - a version control system Update
sudo apt-get update
sudo apt-get --assume-yes install git
sudo apt-get --assume-yes install git-core

# Yeoman - for generators
sudo yarn global add yo

# KVM acceleration and cpu checker
sudo apt-get --assume-yes install  cpu-checker
sudo apt-get --assume-yes install  qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get --assume-yes install  virt-manager
sudo apt-get --assume-yes install  lib32z1 lib32ncurses5 lib32stdc++6

# Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# Docker-compose
sudo apt-get --assume-yes install docker-compose

# Docker-Machine
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine
chmod +x /tmp/docker-machine
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

# Install Ansible with
sudo apt-get --assume-yes install ansible

# Atom
curl -L https://atom.io/download/deb -o atom-amd64.deb
sudo dpkg -i atom-amd64.deb
sudo apt-get -f install
sudo rm atom-amd64.deb
sudo rm get-docker.sh

# Visual Studio code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get --assume-yes install code # or code-insiders

# Final Update
sudo apt-get update

#Node update
nvm install --lts

# Docker Create default machine 
sudo docker-machine create -d virtualbox fastit

#Need to restart to apply all updates
echo "You need to restart your computer to apply all changes with this command =>" 
echo "shutdown -r 0"
sudo shutdown -r 0