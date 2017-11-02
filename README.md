# Dev-Ubuntu-Setup
## How to install all the Development tools

Just execute this command

``` bash
wget -O - https://raw.githubusercontent.com/FastIT/Dev-Ubuntu-Setup/master/install.sh | sh
```
## OHMYZSH Bug Fix

Getting zsh to work in ubuntu is weird, since `sh` does not understand the `source` command.  So, you do this to install zsh

    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

and then you change your shell to zsh

    chsh -s `which zsh`

and then restart

    sudo shutdown -r 0