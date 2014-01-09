"------------------------------------------
" By: Jason Calleiro
" Title: It's a Vim Config!
" Version: 3.0
"------------------------------------------
" Load up the plugins
source ~/.vim/vundle.vim

" Automatically detect file types
filetype plugin indent on

" System (Mac - MacVim) Configs
source ~/.vim/platforms.vim

" Vim configs
source ~/.vim/config.vim

" Bindings
source ~/.vim/bindings.vim

" Plugin configs
source ~/.vim/plugin_configs.vim

" Custom functions
source ~/.vim/functions.vim

" AutoCmd Stuff
source ~/.vim/autocmds.vim
