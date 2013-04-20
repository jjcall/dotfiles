#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Custom aliases
alias e="sublime" # open mvim
alias cdsq="cd ~/Projects/Square" # cd into Square directory
alias cdsrc="cd ~/Projects/Src" # cd into Src directory
alias cds="cd ~/Projects/Senzari" # cd into Senzari directory
alias vinstall="vim +BundleInstall +qall" # install vim plugins with vundle
alias vclean="vim +BundleClean +qall" # cleans and uninstalls vim plugins with vundle
alias runserver="python manage.py runserver" # run python server inside django app
alias shell="python manage.py shell" # open python shell

COMPLETION_WAITING_DOTS="true"

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

# Needed for rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# Powerline
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
