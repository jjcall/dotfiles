#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="crunch"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias e="sublime"
alias cd_square="cd ~/Projects/Square"
alias vinstall="vim +BundleInstall +qall"
alias vclean="vim +BundleClean +qall"
alias wp="git clone git://github.com/WordPress/WordPress.git ."

alias runserver="python manage.py runserver"
alias shell="python manage.py shell"

alias cd_blipby="cd ~/Projects/Its\ A\ Square/blipby/src/publisher && workon blipby"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx rails ruby github node npm brew)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/usr/local/Cellar/php54/5.4.3/bin:/usr/X11/bin

export PATH=/usr/local/share/python:$PATH

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator]

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
