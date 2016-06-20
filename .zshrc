# Load the default boxen environment.

source /opt/boxen/env.sh

# Path to your oh-my-zsh installation.

export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git
    heroku
    postgres
    brew
    zsh_reload
    osx
    z
    zsh-syntax-highlighting
)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

eval "$(rbenv init -)"
RBENV_ROOT=/opt/boxen/rbenv

eval "$(pyenv init -)"
PYENV_ROOT=/opt/boxen/pyenv

eval "$(thefuck --alias)"

eval "$(direnv hook zsh)"

export PATH="/usr/local/heroku/bin:$PATH"
export _Z_NO_RESOLVE_SYMLINKS=true
export EDITOR=vim

unsetopt AUTO_CD

alias ll="ls -alh"
alias be="bundle exec"

# Finally, load oh-my-zsh.

source $ZSH/oh-my-zsh.sh
