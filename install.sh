#!/bin/sh

cp -r configs $HOME
git clone https://github.com/zsh-users/antigen.git ~/antigen
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
