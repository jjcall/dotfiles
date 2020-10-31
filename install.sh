#!/bin/bash
# Install .dotfiles

# -- Import from other scripts -------------------------------------------------

source 'scripts/helpers/colors.sh'
source 'scripts/helpers/functions.sh'

# -- OSX- Setup ----------------------------------------------
source 'scripts/osx.sh'

# -- GIT -----------------------------------------------------------------------

if get_boolean_response "Do you want to install the Git configuration files?"
then
  ln -sf $HOME/.dotfiles/git/gitignore_global $HOME/.gitignore_global
  echo_item "Linked global .gitignore" "green"

  ln -sf $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
  echo_item "Linked gitconfig" "green"
else
  echo_item "Ignoring Git configuration" red
fi

echo ""

# -- ZSH Setup -----------------------------------------------------------------

if exists "zsh"; then
  if get_boolean_response "Do you want to install ZSH configuration files?"; then

    # -- ZSHRC
    ln -sf $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc
    echo_item "Linked zshrc" "green"

  else
    echo_item "Ignoring ZSH configuration" "red"
  fi
else
  echo_item "ZSH is not installed"
fi

echo ""