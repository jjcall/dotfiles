#!/bin/sh
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Install and Set San Francisco as System Font
ruby -e "$(curl -fsSL https://raw.github.com/wellsriley/YosemiteSanFranciscoFont/master/install)"
echo Install Homebrew, Postgres, wget and cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew install ack
brew install autojump
brew install ctags
brew install tmux
brew install curl
brew install git
brew install htop
brew install hub
brew install imagemagick --with-webp
brew install lua
brew install macvim --HEAD --with-lua
brew install mongo
brew install node
brew install postgresql
brew install python
brew install readline
brew install rbenv
brew install ruby-build
brew install rbenv-gem-rehash
brew install rbenv-default-gems
brew install reattach-to-user-namespace
brew install redis
brew install sqlite
brew install vim
brew install wget --with-iri --with-debug
brew install zsh-completions

# JS Stuff
npm install -g jshint

brew tap phinze/cask
brew install brew-cask

# Core Functionality
echo Install Core Apps
brew cask install alfred
brew cask install adobe-creative-cloud
brew cask install appcleaner
brew cask install dropbox
brew cask install vlc
brew cask install iterm2
brew cask install java

# Development
echo Install Dev Apps
brew cask install virtualbox
brew cask install vagrant
brew cask install sequel-pro

# Google Slavery
echo Install Google Apps | Chrome not included cause of 1Password Plugin
brew cask install google-drive
brew cask install chromecast

# Nice to have
echo Install Some additional Apps
brew cask install firefox
brew cask install marked
brew cask install transmission
brew cask install skype
brew cask install spotify
brew cask install spotify-notifications

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

echo "Security: https://objective-see.com/products.html"

echo Now lets install some dotfiles

cutstring="DO NOT EDIT BELOW THIS LINE"

for name in *; do
  target="$HOME/.$name"
  if [ -e $target ]; then
    if [ ! -L $target ]; then
      cutline=`grep -n -m1 "$cutstring" "$target" | sed "s/:.*//"`
      if [[ -n $cutline ]]; then
        let "cutline = $cutline - 1"
        echo "Updating $target"
        head -n $cutline "$target" > update_tmp
        startline=`tail -r "$name" | grep -n -m1 "$cutstring" | sed "s/:.*//"`
        if [[ -n $startline ]]; then
          tail -n $startline "$name" >> update_tmp
        else
          cat "$name" >> update_tmp
        fi
        mv update_tmp "$target"
      else
        echo "WARNING: $target exists but is not a symlink."
      fi
    fi
  else
    if [[ $name != 'install.sh' ]]; then
      echo "Creating $target"
      if [[ -n `grep "$cutstring" "$name"` ]]; then
        cp "$PWD/$name" "$target"
      else
        ln -s "$PWD/$name" "$target"
      fi
    fi
  fi
done
