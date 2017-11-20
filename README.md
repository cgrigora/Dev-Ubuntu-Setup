# Dev-Ubuntu-Setup
## How to install all the Development tools

Just execute this command

``` bash
wget -O - https://raw.githubusercontent.com/FastIT/Dev-Ubuntu-Setup/master/install.sh | sh
```

## FOR LIGHT VERSION USE THIS SH
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

# NVM OHMYZSH FIX

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion