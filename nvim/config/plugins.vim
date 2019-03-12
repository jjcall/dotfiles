" -------------------------------
" Section. Plugins
" -------------------------------
call plug#begin()

" UI
Plug 'trevordmiller/nova-vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'            " Handy info
Plug 'retorillo/airline-tablemode.vim'
Plug 'edkolev/tmuxline.vim'               " Make the Tmux bar match Vim
Plug 'ryanoasis/vim-devicons'

" Project Navigation
Plug 'mileszs/ack.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" File Navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/matchit.zip'            " More powerful % matching
Plug 'haya14busa/incsearch.vim'           " Better search highlighting
Plug 'tpope/vim-vinegar'

" Editing
Plug 'tpope/vim-surround'                 " Change word surroundings
Plug 'tpope/vim-commentary'               " Comments stuff
Plug 'tpope/vim-repeat'
Plug 'dhruvasagar/vim-table-mode',        { 'on': 'TableModeEnable' }
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'jasonlong/vim-textobj-css'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Git
Plug 'tpope/vim-fugitive'                 " Git stuff in Vim
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim',                   { 'on': 'GV' }
Plug 'jez/vim-github-hub'

" Task Running
Plug 'tpope/vim-dispatch'                 " Run tasks asychronously in Tmux
Plug 'w0rp/ale'                           " Linter
Plug 'wincent/terminus'
Plug 'christoomey/vim-tmux-navigator'
Plug 'janko-m/vim-test'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

" Language Support
" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'rhysd/npm-debug-log.vim'
Plug 'Quramy/vim-js-pretty-template'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" HTML
Plug 'othree/html5.vim'

" CSS
Plug 'hail2u/vim-css3-syntax',            { 'for': 'css' }

" Sass
Plug 'cakebaker/scss-syntax.vim'

" Ruby
Plug 'vim-ruby/vim-ruby',                 { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'

" Markdown
Plug 'reedes/vim-pencil'                  " Markdown, Writing
Plug 'godlygeek/tabular',                 { 'for': 'markdown' } " Needed for vim-markdown
Plug 'plasticboy/vim-markdown',           { 'for': 'markdown' }
call plug#end()
