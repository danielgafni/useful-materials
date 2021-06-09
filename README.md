# Useful Materials

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

Antigen will automatically install all the plugins specified in `~/.zshrd`.

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
