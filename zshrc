#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

# Custom aliases
alias e="subl" # open mvim
alias bower='noglob bower'
alias b="battery" # open mvim
alias cdp="cd ~/Projects" #cd into Projects
alias ss='source ~/.zshrc; rvm use ruby-2.0.0-p247@global' # quick source
alias vinstall="vim +BundleInstall! +qall" # install vim plugins with vundle
alias vclean="vim +BundleClean +qall" # cleans and uninstalls vim plugins with vundle
alias runserver="python manage.py runserver" # run python server inside django app
alias shell="python manage.py shell" # open python shell
alias powit="rvm env . -- --env > .powenv" #adds powenv and points to rvm ruby and gems
alias bower='noglob bower'
alias phpserve='php -S 127.0.0.1:8080'

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

plugins=(git rvm brew)

source $ZSH/oh-my-zsh.sh

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# recommended by brew doctor
export PATH='$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

# Virutal Env
# export WORKON_HOME=~/.virtualenvs
# source /usr/local/bin/virtualenvwrapper.sh
# export VIRTUALENV_DISTRIBUTE=true

# Pythonbrew
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
