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
Bundle 'altercation/vim-colors-solarized'

" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'gmarik/sudo-gui.vim'

" Helpers
Bundle 'henrik/vim-indexed-search'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'
Bundle 'matchit.zip'
Bundle 'garbas/vim-snipmate'

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
Bundle 'timcharper/textile.vim'
Bundle 'mutewinter/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'acustodioo/vim-tmux'
Bundle 'hallison/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'spf13/PIV'

" Libs
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"

