# Thom's dotfiles and dev tools

This is my repo for keeping my development configuration in version control.

## Dependencies

Install the following for everything to work without any need to alter the dotfiles:

- Terminal Emulator
    - [Alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
- Shell look and feel
    - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
    - [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
    - [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack) (make sure it's installed system-wide)
- Git enhancers
    - [Git-Delta](https://github.com/dandavison/delta)
- File search
    - [fzf](https://github.com/junegunn/fzf) (this will be automatically installed by the git plugin, so you can skip this one)
    - [Silver Searcher](https://github.com/ggreer/the_silver_searcher)
- Version Managers etc
    - [Node Version Manager](https://github.com/nvm-sh/nvm)
    - [Pyenv](https://github.com/pyenv/pyenv)
- Linters
    - [Pyright](https://github.com/microsoft/pyright)
    - [Ruff](https://docs.astral.sh/ruff/installation/)
    - [Spectral](https://github.com/stoplightio/spectral)
- Debuggers
    - [Vimspector](https://github.com/puremourning/vimspector)
- Docker
    - [Docker Engine](https://docs.docker.com/engine/install/debian/#install-using-the-repository)
    - [Kubectl](https://github.com/kubernetes/kubectl)
- Entertainment
    - [Spotify](https://www.spotify.com/de-en/download/linux)

## Clone repo

Clone the repo with:

`git clone --bare --recurse-submodules https://github.com/thomwilson/.dotfiles.git $HOME/.dotfiles && /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout -f`

The alias in .zshrc allows you handle the dotfiles in your home dir through the usual git commands, e.g:

`dotfiles log`

To hide all the other untracked files in the home directory, run the following command:

`dotfiles config --local status.showUntrackedFiles no`

Different profiles for different machines can be persisted across git branches in this repo.

## Install plugins

Once installed, run the following commands to install all plugins:

- In tmux, type `<prefix>` (Ctrl + b) + `I`
- In the vim command line (press `:`), execute `:PlugInstall`
