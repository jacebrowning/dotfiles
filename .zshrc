###############################################################################
# Theme

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

###############################################################################
# Plugins

plugins=(
    git
    heroku
    zsh_reload
    zsh-syntax-highlighting
    z
)

###############################################################################
# Custom paths

eval "$(rbenv init -)"
eval "$(pyenv init --path)"
eval "$(thefuck --alias)"
eval "$(direnv hook zsh)"

export PATH=$PATH:/usr/local/sbin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
export ANDROID_HOME=/usr/local/share/android-sdk

###############################################################################
# Program options

export _Z_NO_RESOLVE_SYMLINKS=true

export EDITOR=vim

unsetopt AUTO_CD

###############################################################################
# Custom aliases

alias be="bundle exec"

alias dcu="docker-compose up -d"
alias dcs="docker-compose stop"
alias dcl="docker-compose logs -f --tail=100 web worker"

###############################################################################
# Load oh-my-zsh

fpath+=~/.zfunc

source $ZSH/oh-my-zsh.sh

###############################################################################
# Extra scripts

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # nvm bash_completion

export PATH="${HOME}/.local/bin:${PATH}"  # pipx

export PATH="${HOME}/.poetry/bin:${PATH}"  # poetry
