# dotfiles repo config
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# Load Antigen
source "$HOME/.antigen.zsh"

# Load oh-my-zsh library
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle command-not-found
antigen bundle docker

# Load bundles from external repos
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done
antigen apply

# poetry
export PATH="$HOME/.local/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# starship term
eval "$(starship init zsh)"

# aliases
source .alias

# fly.io
export FLYCTL_INSTALL="/home/robert/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# docker
export DOCKER_BUILDKIT=1

