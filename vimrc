"------------------------------------------
" By: Jason Calleiro
" Title: It's a Vim Config!
" Version: 3.0
" Changes: Ripped out old vim and made config more modular
"------------------------------------------

" Load up the plugins
source ~/.vim/vundle.vim

" Automatically detect file types
filetype plugin indent on

" System (Mac - MacVim) Configs
source ~/.vim/platform.vim

" Vim configs
source ~/.vim/config.vim

" Bindings
source ~/.vim/bindings.vim
