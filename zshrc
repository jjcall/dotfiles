#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

plugins=(git rvm brew sublime)

# Custom aliases
alias e="vim" # open vim
alias cdp="cd ~/Projects" #cd into Projects
alias cda="cd ~/Projects/AppTheory" #cd into AppTheory
alias ss='source ~/.zshrc'
alias runserver="python manage.py runserver" # run python server inside django app
alias shell="python manage.py shell" # open python shell
alias powit="rvm env . -- --env > .powenv" #adds powenv and points to rvm ruby and gems
alias bower='noglob bower'
alias git=hub

source $ZSH/oh-my-zsh.sh

# Default editor
export EDITOR="vim"


# Recommended by brew doctor
export PATH='$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

# CaskFile
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"


# Virutal Env
# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
else
  echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# Hub for git
eval "$(hub alias -s)"

# rbenv
eval "$(rbenv init -)"
