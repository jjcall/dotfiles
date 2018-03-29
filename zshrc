#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

plugins=(git git-extras rvm brew)

# Custom aliases
alias vim="mvim -v"
alias e="vim" # open vim
alias cdp="cd ~/Projects" #cd into Projects
alias cda="cd ~/Projects/App\ Theory" #cd into Projects
alias cde="cd ~/Projects/EazyO" #cd into Projects
alias cdb="cd ~/Projects/Build" #cd into Projects
alias ss='source ~/.zshrc'
alias bower='noglob bower'
alias tmux="TERM=xterm-256color tmux"

source $ZSH/oh-my-zsh.sh

# Default editor
export EDITOR="vim"

# Cask Default
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Recommended by brew doctor
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

# Rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

bs(){
  echo
  echo "browser-sync start --server --directory --files \"**\""
  echo "http://www.browsersync.io/docs/command-line/"
  echo
  browser-sync start --server --directory --files "**"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
