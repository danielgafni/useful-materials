# Useful Materials

## CLI tools installation

1. Install `zsh`, `tmux` and `vim`. Make `zsh` the default shell (already the default shell on modern macOS versions). 
2. Install `oh-my-zsh`:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
3. Install `powerlevel10k`:
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
4. Change the `zsh` theme to `powerlevel10k`:
```bash
sed -i 's/robbyrussell/powerlevel10k\/powerlevel10k/' ~/.zshrc
```
Or manually set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc.
5. Restart the shell and go through the `p10k` configuration dialog. Optionally: use the [recommended font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) for the best terminal glyphs.

# Configuration
Copy the configs to /home/$USER:

```bash
cp -r configs/* ~
```

## Tmux

1. Install the Tmux Plugin Manager:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
2. Reload the tmux environment:
```bash
tmux source ~/.tmux.conf
```
3. Install the plugins specified in `~/.tmux.conf`. Start `tmux` and press `prefix` + I (capital i, as in **I**nstall) to fetch the plugin. `prefix` is ctrl+B by default.

## VIM
The VIM configuration file (`~/.vimrc`) automatically installs `vim-plug` - a VIM plugin manager.

1. Start `vim` and run the `:PlugInstall` command.
