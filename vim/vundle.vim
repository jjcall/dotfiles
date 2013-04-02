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
Bundle 'myusuf3/numbers.vim'

" UI
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'w0ng/vim-hybrid'
Bundle 'airblade/vim-gitgutter'
Bundle 'skammer/vim-css-color'

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
Bundle 'chrisbra/SudoEdit'

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

" Libs
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"

