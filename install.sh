#!/bin/bash
ln -f --symbolic $(pwd)/keybindings.json ~/.config/Code/User/keybindings.json
ln -f --symbolic $(pwd)/settings.json ~/.config/Code/User/settings.json
ln -f --symbolic $(pwd)/.zshrc ~/.zshrc
# hosts can't be sym linked
sudo cp ./hosts /etc/hosts
