#!/bin/sh

cat configs/.zshrc >> $HOME/.zshrc
cat configs/.vimrc >> $HOME/.vimrc
cat configs/.tmux.conf >> $HOME/.tmux.conf

git clone https://github.com/zsh-users/antigen.git ~/antigen
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
