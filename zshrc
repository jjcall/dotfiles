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
alias e="subl" # open vim
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
export EDITOR="subl"

# Recommended by brew doctor
export PATH='$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

# CaskFile
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"

# Hub for git
eval "$(hub alias -s)"

# Rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
