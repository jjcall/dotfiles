set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

"-------------------------------------
" UI
"-------------------------------------
Plugin 'ajh17/Spacegray.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'

"-------------------------------------
" Utils
"-------------------------------------
Plugin 'mileszs/ack.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'haya14busa/incsearch.vim'

"-------------------------------------
" Commands 
"-------------------------------------
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'

"-------------------------------------
" Helpers
"-------------------------------------
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'

"-------------------------------------
" Languages 
"-------------------------------------
" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'thoughtbot/vim-rspec'

" HTML
Plugin 'othree/html5.vim'
Plugin 'indenthtml.vim'
Plugin 'gregsexton/MatchTag'

" JS
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'juvenn/mustache.vim'

call vundle#end()
filetype plugin indent on
