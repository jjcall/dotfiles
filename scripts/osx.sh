#!/bin/bash
# OSX.sh

# -- Homebrew ------------------------------------------------------------------

if exists "brew"; then
  echo_item "Homebrew is already installed" green
else
  if get_boolean_response "Do you want to install Homebrew?"; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    echo_item "Skipping Homebrew install" "red"
  fi
fi

echo ""

# -- npm -----------------------------------------------------------------------

if exists "npm"; then
  echo_item "npm is already installed" green
else
  if get_boolean_response "Do you want to install npm?"; then
    brew install node
  else
    echo_item "Skipping npm install" red
  fi
fi

echo ""

# -- Brew Apps----------------------------------------------------------------------
if exists "brew"; then
  if get_boolean_response "Do you want to install Homebrew applications?"; then
    brew bundle --file=/Users/jasoncalleiro/.dotfiles/install/Brewfile
  else
    echo_item "Skipping installing Homebrew apps" red
  fi
fi

echo ""


# -- Cask Apps----------------------------------------------------------------------
if exists "brew"; then
  if get_boolean_response "Do you want to install Cask applications?"; then
    brew bundle --file=/Users/jasoncalleiro/.dotfiles/install/Caskfile
  else
    echo_item "Skipping installing Cask apps" red
  fi
fi

echo ""


# -- Mas Apps----------------------------------------------------------------------
if exists "mas"; then
  if get_boolean_response "Do you want to install App Store applications?"; then
    brew bundle --file=/Users/jasoncalleiro/.dotfiles/install/Masfile
  else
    echo_item "Skipping installing App Store apps" red
  fi
fi

echo ""
