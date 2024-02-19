export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bullet-train"

# Relies on a patched NerdFont
BULLETTRAIN_PROMPT_CHAR=""
BULLETTRAIN_DIR_FG="black"
BULLETTRAIN_NVM_PREFIX=" "
BULLETTRAIN_NVM_FG="black"
BULLETTRAIN_VIRTUALENV_PREFIX=" "
BULLETTRAIN_KCTX_PREFIX="󱃾 "
BULLETTRAIN_VIRTUALENV_BG="red"
BULLETTRAIN_VIRTUALENV_FG="black"
BULLETTRAIN_KCTX_FG="black"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias docker-compose="docker compose"

alias c=clear
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

PATH="$HOME/.local/bin:$PATH"

source <(kubectl completion zsh)

