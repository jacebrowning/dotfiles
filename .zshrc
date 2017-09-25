# Path to oh-my-zsh

export ZSH=$HOME/.oh-my-zsh


# Theme selection

ZSH_THEME="robbyrussell"


# Plugins

plugins=(
    git
    heroku
    zsh_reload
    zsh-syntax-highlighting
    z
)


# Custom paths

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"
eval "$(thefuck --alias)"
eval "$(direnv hook zsh)"

PATH=$PATH:/usr/local/sbin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
export ANDROID_HOME=/usr/local/share/android-sdk


# Program options

export _Z_NO_RESOLVE_SYMLINKS=true

export EDITOR=vim

export PIPENV_SHELL_COMPAT=true
export PIPENV_VENV_IN_PROJECT=true

unsetopt AUTO_CD


# Custom aliases

alias be="bundle exec"


# Load oh-my-zsh

source $ZSH/oh-my-zsh.sh
