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

Just execute this command

``` bash
wget -O - https://raw.githubusercontent.com/FastIT/Dev-Ubuntu-Setup/master/install.sh | sh
```

## FOR LIGHT VERSION USE THIS SH
### Light Tools:
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
Just execute this command

``` bash
wget -O - https://raw.githubusercontent.com/FastIT/Dev-Ubuntu-Setup/master/light-install.sh | sh
```