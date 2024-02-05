# Thom's dotfiles and dev tools

This is my repo for keeping my development configuration in version control.

## Clone repo

Clone the repo with:

`git clone --bare --recurse-submodules https://github.com/thomwilson/.dotfiles.git $HOME/.dotfiles && source ~/.zshrc`

The alias in .zshrc allows you handle the dotfiles in your home dir through the usual git commands, e.g:

`dotfiles log`

To hide all the other untracked files in the home directory, run the following command:

`dotfiles config --local status.showUntrackedFiles no`

Different profiles for different machines can be persisted across git branches in this repo.

## Dependencies

Install the following for everything to work without any need to alter the dotfiles:

- Shell look and feel
    - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
    - [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack)
    - [Gogh](https://github.com/Gogh-Co/Gogh)
- File search
    - [Silver Searcher](https://github.com/ggreer/the_silver_searcher)
- Version Managers
    - [Node Version Manager](https://github.com/nvm-sh/nvm)
    - [Pyenv](https://github.com/pyenv/pyenv)
- Linters
    - [Pyright](https://github.com/microsoft/pyright)
    - [Ruff](https://docs.astral.sh/ruff/installation/)
    - [Spectral](https://github.com/stoplightio/spectral)
- Docker
    - [Docker Engine](https://docs.docker.com/engine/install/debian/#install-using-the-repository)
    - [Kubectl](https://github.com/kubernetes/kubectl)
- Entertainment
    - [Spotify](https://www.spotify.com/de-en/download/linux)

## Install plugins

Once installed, run the following commands to install all plugins:

- In tmux, press `<prefix> + I`
- In the vim command line (press `:`), execute `:PlugInstall`
