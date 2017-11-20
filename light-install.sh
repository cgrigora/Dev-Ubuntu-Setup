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

#Node update
nvm install --lts

# NPM
sudo apt-get --assume-yes install npm

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

# Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# Docker-compose
sudo apt-get --assume-yes install docker-compose

# Get super-perm for Docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chown "$USER":"$USER" /var/run/docker.sock -R

# Docker-Machine
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine
chmod +x /tmp/docker-machine
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

# Install Ansible with
sudo apt-get --assume-yes install ansible

# Final Update
sudo apt-get update

# Zsh
sudo apt-get --assume-yes install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
#Changing shell to Zsh
sudo chsh -s `which zsh`
#NVM OHMYZSH FIX
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Docker Create default machine 
sudo docker-machine create -d virtualbox fastit

#Need to restart to apply all updates
echo "You need to restart your computer to apply all changes with this command =>" 
echo "shutdown -r 0"
sudo shutdown -r 0