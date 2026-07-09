# Dotfiles

Personal macOS dotfiles for Zsh, Git, tmux, Neovim, and helper scripts. The
repository is organised as GNU Stow packages and targets Apple Silicon Macs.

## Requirements

- macOS on Apple Silicon, with the Xcode Command Line Tools and
  [Homebrew](https://brew.sh/) installed
- A Nerd Font configured in the terminal
- [Oh My Zsh](https://ohmyz.sh/) with the `zsh-autosuggestions` and
  `zsh-syntax-highlighting` plugins
- [1Password](https://developer.1password.com/docs/ssh/) configured as the SSH
  agent and Git commit signer

The `Brewfile` contains only tools referenced by these configurations: Stow
for linking files, tmux and `fzf` for project sessions, Neovim plus its search
and parser tools, Tcl/Tk build metadata, and 1Password integration.

## Install

Back up any existing files that overlap with these packages, then run:

```sh
git clone --recurse-submodules https://github.com/wiigg/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
brew bundle
stow git nvim scripts tmux zsh
```

Install the two Zsh plugins expected by `.zshrc`:

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
```

Install the tmux plugin manager, start tmux, and press `C-a I` to install the
configured plugins:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

The Git configuration contains a personal name, email, SSH signing key, and
1Password application path. Update `git/.gitconfig` before stowing it on a
different account or platform.

## Packages

| Package | Target |
| --- | --- |
| `git` | `~/.gitconfig` |
| `nvim` | `~/.config/nvim` |
| `scripts` | `~/.local/bin` |
| `tmux` | `~/.tmux.conf` |
| `zsh` | `~/.zprofile`, `~/.zshrc` |

## Update

```sh
cd ~/.dotfiles
git pull --recurse-submodules
brew bundle
stow -R git nvim scripts tmux zsh
```

Neovim is maintained as a Git submodule. Commit changes inside
`nvim/.config/nvim` first, then commit the updated submodule reference in this
repository.
