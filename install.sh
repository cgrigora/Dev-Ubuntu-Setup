#!/bin/bash
#Fastit Development Machine Setup on Ubuntu

sudo apt-get update

# Installing build essentials
sudo apt-get --assume-yes install build-essential libssl-dev

# Vim, Curl, Python - useful stuff
sudo apt-get --assume-yes install vim curl python-software-properties
sudo apt-get--assume-yes install python-pip python-dev build-essential
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv
sudo apt-get --assume-yes install libkrb5-dev


# Nodejs
sudo apt-get --assume-yes install nodejs-legacy
# NPM
sudo apt-get --assume-yes install npm
# NVM
sudo npm install -g nvm
sudo nvm install node
sudo nvm use node
sudo nvm install --lts
node -v

# Mongodb, Installing and starting server
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get --assume-yes install -y mongodb-org
sudo service mongod start
sudo service mongod status

# Git - a version control system Update
sudo apt-get update
sudo apt-get --assume-yes install git
sudo apt-get --assume-yes install git-core

# Yeoman - for generators
sudo npm install -g yo


# Archive Extractors
sudo apt-get --assume-yes install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

# KVM acceleration and cpu checker
sudo apt-get --assume-yes install  cpu-checker
sudo apt-get --assume-yes install  qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get --assume-yes install  virt-manager
sudo apt-get --assume-yes install  lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
# Docker-compose
sudo apt-get --assume-yes install docker-compose
# Get super-perm for Docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chown "$USER":"$USER" /var/run/docker.sock -R

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get --assume-yes install yarn
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

# Zsh
sudo apt-get --assume-yes install zsh
wget –no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O – | sh

#Changing shell to Zsh
sudo chsh -s `which zsh`

#Need to restart to apply all updates
#sudo shutdown -r 0
echo "You need to restart your computer to apply all changes with this command =>" 
echo "shutdown -r 0"

# Nuclide
#apm install nuclide

# TLP - saves battery when Ubuntu is installed on Laptops
# sudo apt-get --assume-yes remove laptop-mode-tools
# sudo add-apt-repository ppa:linrunner/tlp
# sudo apt-get update
# sudo apt-get --assume-yes install tlp tlp-rdw smartmontools ethtool
# sudo tlp start
# sudo tlp stat

# Xpad
#sudo apt-get --assume-yes install xpad
# xClip
#sudo apt-get --assume-yes install xclip