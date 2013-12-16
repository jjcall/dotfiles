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

" UI
Bundle 'scrooloose/nerdtree'
Bundle 'chriskempson/vim-tomorrow-theme'

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
Bundle 'mattn/zencoding-vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'

" Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'

" HTML
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'

" Misc Languages
Bundle 'mutewinter/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'hallison/vim-markdown'
Bundle 'groenewege/vim-less'

" Libs
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"

