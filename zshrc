#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="crunch"

# Custom aliases
alias e="mvim" # open mvim
alias cds="cd ~/Projects/Square" # cd into Square directory
alias vinstall="vim +BundleInstall +qall" # install vim plugins with vundle
alias vclean="vim +BundleClean +qall" # cleans and uninstalls vim plugins with vundle
alias wp="git clone git://github.com/WordPress/WordPress.git ." # clone standard wp install
alias wpc="git clone git@github.com:jjcall/wp-square.git ." # clone itsasquare custom wp install
alias runserver="python manage.py runserver" # run python server inside django app
alias shell="python manage.py shell" # open python shell

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# System path 
export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/usr/local/Cellar/php54/5.4.3/bin:/usr/X11/bin

# Python path
export PATH=/usr/local/share/python:$PATH
# Virutal Env
export WORKON_HOME=~/.virtualenvs
source /usr/local/share/python/virtualenvwrapper.sh

# Needed for rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi


# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator]
