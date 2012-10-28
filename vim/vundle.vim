"------------------------------------------
" Vundle
"------------------------------------------
set nocompatible			" be iMproved
filetype off				" required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage Vundle
Bundle 'gmarik/vundle'

"------------------------------------------
" Plugins
"------------------------------------------
" Navigation
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'

" UI
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'Rykka/colorv.vim'
Bundle 'chriskempson/vim-tomorrow-theme'

" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'gmarik/sudo-gui.vim'

" Helpers

" Ruby

" Javascript

" HTML

" Misc Languages

" Libs
