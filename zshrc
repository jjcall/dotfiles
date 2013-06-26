#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

# Custom aliases
alias e="sublime" # open mvim
alias cdsq="cd ~/Projects/Square" # cd into Square directory
alias cdsrc="cd ~/Projects/Src" # cd into Src directory
alias cds="cd ~/Projects/Senzari" # cd into Senzari directory
alias ss='source ~/.zshrc' # quick source
alias vinstall="vim +BundleInstall +qall" # install vim plugins with vundle
alias vclean="vim +BundleClean +qall" # cleans and uninstalls vim plugins with vundle
alias runserver="python manage.py runserver" # run python server inside django app
alias shell="python manage.py shell" # open python shell
alias powit="rvm env . -- --env > .powenv" #adds powenv and points to rvm ruby and gems

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

plugins=(git bundler brew gem)

source $ZSH/oh-my-zsh.sh

# System path
export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/usr/local/Cellar/php54/5.4.3/bin:/usr/X11/bin

# Python path
export PATH=/usr/local/share/python:$PATH
# Virutal Env
export WORKON_HOME=~/.virtualenvs
source /usr/local/share/python/virtualenvwrapper.sh

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# RVM Stuff 
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
