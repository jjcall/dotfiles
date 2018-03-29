# - Start to Install xCode (download 4 Gb)
# - Setup languages
#   - max key repeat speed
#   - Short delay before repeat
# - Shortcuts
# - Other items in settings
# - Run xCode
# - Setup time machine
# - Install homebrew and all from brew

echo Install Homebrew, Postgres, wget and cask

brew update
brew upgrade
brew install ack
brew install autojump
brew install ctags
brew install cmake
brew install tmux
brew install curl
brew install git
brew install htop
brew install imagemagick --with-webp
brew install mongo
brew install node
brew install postgresql
brew install python
brew install readline
brew install rbenv
brew install ruby-build
brew install rbenv-default-gems
brew install reattach-to-user-namespace
brew install redis
brew install sqlite
brew install vim
brew install neovim
brew install wget --with-iri --with-debug
brew install zsh-completions

# JS Stuff
npm install -g jshint

# iOS
sudo gem install cocoapods
pod setup

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

echo Time to set your hostname
sudo scutil --set HostName eazymac

# echo Lets change some of the OSX defaults to make things a little snappier.
# sh ~/.osx

echo Thats a wrap
