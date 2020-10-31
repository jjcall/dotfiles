.dotfiles
=========

# Installing the doftiles

1. Pull the project into your home directory
   ```bash
   git clone https://github.com/jjcall/dotfiles.git ~/.dotfiles
   git submodule update --init --recursive
   ```

2. Run the installation script
   ```bash
   ~/.dotfiles/install.sh
   ```

3. Unless you're me, change the Git configuration to your own name and email address

# Make `CAPSLOCK` Useful

I hate `CAPSLOCK` and don't find it useful at all. However, is _does_ occupy a really useful place on the keyboard.  I've found the best use for it to be mapping it such that tapping it sends `ESC` and holding it works as `CONTROL`.  This way, you can hold it down using your pinky finger as a modifier, or give it a quick tap to pop out of `insert` mode in Vim.

