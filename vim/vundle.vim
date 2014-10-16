set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"------------------------------------------
" Plugins
"------------------------------------------
" UI
Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'paranoida/vim-airlineish'

" Navigation
Plugin 'kien/ctrlp.vim'
Plugin 'ctags.vim'

" Commands
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'danro/rename.vim'

" Helpers
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'matchit.zip'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'wellle/tmux-complete.vim'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'

" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'thoughtbot/vim-rspec'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'
Plugin 'mustache/vim-mustache-handlebars'
Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'marijnh/tern_for_vim'

" HTML
Plugin 'othree/html5.vim'
Plugin 'indenthtml.vim'
Plugin 'gregsexton/MatchTag'

" Misc
Plugin 'mutewinter/vim-css3-syntax'
Plugin 'hallison/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin '1995eaton/vim-better-css-completion'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
