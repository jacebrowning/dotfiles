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

# User configuration
export PATH="/usr/local/heroku/bin:$PATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

source $ZSH/oh-my-zsh.sh

unsetopt AUTO_CD
alias ll="ls -alh"
export EDITOR=vim

source /opt/boxen/env.sh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
RBENV_ROOT=/opt/boxen/rbenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
PYENV_ROOT=/opt/boxen/pyenv
if which fuck > /dev/null; then eval "$(thefuck --alias)"; fi
