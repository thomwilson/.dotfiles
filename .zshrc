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

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

plugins=(git zsh-syntax-highlighting jira kubectl nvm pyenv azure web-search)

source $ZSH/oh-my-zsh.sh

if [ -f $HOME/.jira.env ]; then
  source $HOME/.jira.env
fi

alias docker-compose="docker compose"
alias c=clear
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

PATH="$HOME/.local/bin:$PATH"

