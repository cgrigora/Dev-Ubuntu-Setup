# Dev-Ubuntu-Setup

## FIRST INSTALL ZSH
Getting zsh to work in ubuntu is weird, since `sh` does not understand the `source` command.  So, you do this to install zsh

``` bash
sudo apt-get --assume-yes install zsh
sudo apt-get --assume-yes install git
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
```
and then you change your shell to zsh

    chsh -s `which zsh`

and then restart

    sudo shutdown -r 0
## How to install all the Development tools
### All Tools:

Just execute this command

``` bash
wget -O - https://raw.githubusercontent.com/FastIT/Dev-Ubuntu-Setup/master/install.sh | sh
```
* Build essentials
* Vim, Curl, Python - useful stuff
* Node & NPM
* Virtualbox
* NVM
* Yarn
* Git - a version control system Update
* Yeoman - for generators
* KVM acceleration and cpu checker
* Docker-compose
* Docker-Machine
* Ansible
* Atom
* Visual Studio code
* Zsh
* JRE & JDK

## FOR LIGHT VERSION USE THIS SH
### Light Tools:
Just execute this command

``` bash
wget -O - https://raw.githubusercontent.com/FastIT/Dev-Ubuntu-Setup/master/light-install.sh | sh
```
* Build essentials
* Vim, Curl, Python - useful stuff
* Node & NPM
* Virtualbox
* NVM
* Yarn
* Git - a version control system Update
* Yeoman - for generators
* Docker-compose
* Docker-Machine
* Ansible
* Zsh
* JRE & JDK

#NVM OHMYZSH FIX
``` bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/.nvm/nvm.sh
```

# Get super-perm for Docker
``` bash
chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chown "$USER":"$USER" /var/run/docker.sock -R
```
#Node update lts with NVM
``` bash   
sudo nvm install --lts
```
#Need to restart to apply all updates
``` bash
sudo shutdown -r
```