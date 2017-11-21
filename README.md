# Dev-Ubuntu-Setup

## FIRST INSTALL ZSH
Getting zsh to work in ubuntu is weird, since `sh` does not understand the `source` command.  So, you do this to install zsh

``` bash
sudo apt-get --assume-yes install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
```
and then you change your shell to zsh

    chsh -s `which zsh`

and then restart

    sudo shutdown -r 0
## How to install all the Development tools

Just execute this command

``` bash
wget -O - https://raw.githubusercontent.com/FastIT/Dev-Ubuntu-Setup/master/install.sh | sh
```

## FOR LIGHT VERSION USE THIS SH
Just execute this command

``` bash
wget -O - https://raw.githubusercontent.com/FastIT/Dev-Ubuntu-Setup/master/light-install.sh | sh
```