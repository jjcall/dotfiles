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
Plugin 'crusoexia/vim-dracula'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'

"-------------------------------------
" Utils
"-------------------------------------
Plugin 'mileszs/ack.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'haya14busa/incsearch.vim'
Plugin 'sjl/gundo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rizzatti/dash.vim'
Plugin 'metakirby5/codi.vim'

"-------------------------------------
" Commands 
"-------------------------------------
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'

"-------------------------------------
" Helpers
"-------------------------------------
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'

"-------------------------------------
" Syntax 
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
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'juvenn/mustache.vim'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-markdown'
Plugin 'Slava/tern-meteor'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'

call vundle#end()
filetype plugin indent on
