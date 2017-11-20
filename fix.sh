#Changing shell to Zsh
chsh -s $(which zsh)
#NVM OHMYZSH FIX
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Get super-perm for Docker
chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chown "$USER":"$USER" /var/run/docker.sock -R
#Node update
sudo nvm install --lts
#Need to restart to apply all updates
echo "You need to restart your computer to apply all changes with this command =>" 
echo "shutdown 10sec"
sudo shutdown -r -t 10