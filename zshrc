#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

# Custom aliases
alias e="st" # open sublime
alias b="battery" # open mvim
alias cdp="cd ~/Projects" #cd into Projects
alias ss='source ~/.zshrc'
alias vinstall="vim +BundleInstall! +qall" # install vim plugins with vundle
alias vclean="vim +BundleClean +qall" # cleans and uninstalls vim plugins with vundle
alias runserver="python manage.py runserver" # run python server inside django app
alias shell="python manage.py shell" # open python shell
alias powit="rvm env . -- --env > .powenv" #adds powenv and points to rvm ruby and gems
alias bower='noglob bower'
alias git=hub


COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

plugins=(git rvm brew sublime)

source $ZSH/oh-my-zsh.sh

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Recommended by brew doctor
export PATH='$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

# Use homebrew php-cli
export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"

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

# Pythonbrew
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Hub for git
eval "$(hub alias -s)"

# Tmux Colors
alias tmux="TERM=screen-256color-bce tmux"
