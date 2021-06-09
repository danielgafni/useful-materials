# Useful Materials

The following configs work best with the [Nord](https://www.nordtheme.com/) theme. Install it for your terminal to get the best results.

## CLI tools installation & configuration (automatic)
1. Install `zsh`, `tmux` and `vim`. Make `zsh` the default shell (already the default shell on modern macOS versions):
```bash
sudo usermod --shell /bin/zsh $USER
```
2. Run
```bash
./install.sh
```
3. Install the plugins specified in `~/.tmux.conf`. Start `tmux` and press `prefix` + I (capital i, as in **I**nstall) to fetch the plugin. `prefix` is ctrl+B by default.
## CLI tools installation & configuration (manual)

Copy the configs to /home/$USER:

```bash
cp -r configs/. ~
```

Attention! This will overwrite the corresponding files in your home directory.

### ZSH
Install `antigen` - a fast `zsh` plugin manager:
```bash
git clone https://github.com/zsh-users/antigen.git ~/antigen
```

Antigen will automatically install all the plugins specified in `~/.zshrc`.

## Tmux
1. Install `tmp` - the Tmux Plugin Manager:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
2. Reload the tmux environment (if already running):
```bash
tmux source ~/.tmux.conf
```
3. Install the plugins specified in `~/.tmux.conf`. Start `tmux` and press `prefix` + I (capital i, as in **I**nstall) to fetch the plugin. `prefix` is ctrl+B by default.

## VIM
The VIM configuration file (`~/.vimrc`) automatically installs `vim-plug` - a VIM plugin manager.

1. Start `vim` and run the `:PlugInstall` command.

## References
0. [powerlevel10k](https://github.com/romkatv/powerlevel10k)
1. [Antigen](https://github.com/zsh-users/antigen)
2. [tmux](https://github.com/tmux/tmux)
3. [tpm](https://github.com/tmux-plugins/tpm)
4. [vim](https://github.com/tmux-plugins/tpm)
5. [vim-plug](https://github.com/junegunn/vim-plug)
6. [awesome zsh plugins](https://github.com/unixorn/awesome-zsh-plugins#antigen)
7. [awesome tmux](https://github.com/rothgar/awesome-tmux)
