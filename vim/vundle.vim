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
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'christoomey/vim-tmux-navigator'

" UI
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'kien/rainbow_parentheses.vim'

" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'mklabs/grunt.vim'

" Helpers
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'
Bundle 'matchit.zip'
Bundle 'garbas/vim-snipmate'
Bundle 'mattn/emmet-vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'mtth/scratch.vim'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'

" Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'mustache/vim-mustache-handlebars'

" HTML
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'

" PHP
Bundle 'StanAngeloff/php.vim'
Bundle 'joonty/vim-phpqa'

" Misc Languages
Bundle 'mutewinter/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'hallison/vim-markdown'
Bundle 'groenewege/vim-less'

" Libs
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"

