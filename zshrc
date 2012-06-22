# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="murilasso"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
plugins=(git django)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/share/python:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/x11/bin
export NODE_PATH=/usr/local/lib/node_modules

# Virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/share/python/virtualenvwrapper.sh

alias cd_senzari="cd ~/Projects/Senzari/src/senzari && source ../../cfg/senzari/bin/activate"
alias cd_formbit="cd ~/Projects/formbit-web && workon formbit"
alias cd_sites="cd ~/Sites"
alias cd_themes="cd ~/Sites/themes"
alias pear="php /usr/lib/php/pear/pearcmd.php"
alias pecl="php /usr/lib/php/pear/peclcmd.php"

# Alias to my linode box
alias squarebox="ssh root@173.255.225.126"

