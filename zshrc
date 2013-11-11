#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

# Custom aliases
alias e="subl" # open mvim
alias b="battery" # open mvim
alias cdsq="cd ~/Projects/Square" # cd into Square directory
alias cdsrc="cd ~/Src" # cd into Src directory
alias cdco="cd ~/Projects/CO" # cd into .CO directory
alias cdr="cd ~/Projects/Resumerobo" #cd into ResumeRobo directory
alias ss='source ~/.zshrc' # quick source
alias vinstall="vim +BundleInstall! +qall" # install vim plugins with vundle
alias vclean="vim +BundleClean +qall" # cleans and uninstalls vim plugins with vundle
alias runserver="python manage.py runserver" # run python server inside django app
alias shell="python manage.py shell" # open python shell
alias powit="rvm env . -- --env > .powenv" #adds powenv and points to rvm ruby and gems

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

plugins=(git bundler brew gem)

source $ZSH/oh-my-zsh.sh

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

# Virutal Env
# export WORKON_HOME=~/.virtualenvs
# source /usr/local/bin/virtualenvwrapper.sh
# export VIRTUALENV_DISTRIBUTE=true

# Pythonbrew
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

# rbenv goodnes
eval "$(rbenv init -)"
