"-------------------------------------
" Vim setup
"-------------------------------------

"-------------------------------------
" Color
"-------------------------------------
colorscheme Tomorrow-Night-Eighties

"-------------------------------------
" Font
"-------------------------------------
set gfn=Bitstream\ Vera\ Sans\ Mono\ 10

"-------------------------------------
" Backups, Tmp Files, and Undo
"-------------------------------------
set noswapfile
set directory=~/.vim/.tmp
set undofile
set undodir=~/.vimour.undo
set title			" Set the title of the window in term

"-------------------------------------
" Behaviors
"-------------------------------------
syntax enable
set autoread			" Automatically reload changes if detected
set wildmenu			" Turn on wild menu
set hidden			" Change buffer without saving
set history=768			" Number of things to remember
set clipboard+=unnamed		" Yanks go on clipboard instead
set autowrite			" Writes on make/shell commands
set timeoutlen=350		" Time to wait for a command
set foldlevelstart=99		" Remove folds
set iskeyword+=$,@		" Add extra chars that are valid variable parts
set nostartofline		" Dont jump to start of line after commands
set scrolloff=5			" Keep three lines below everything
set shortmess+=A " Always edit file, even whe swap is present
set modifiable


"-------------------------------------
" Text Format
"-------------------------------------
set tabstop=2
set backspace=2			" Delete everything with backspace
set shiftwidth=2		" Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set nowrap

"-------------------------------------
" Searching
"-------------------------------------
set ignorecase			" Case insensitive search
set smartcase			" Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc

"-------------------------------------
" Visual 
"-------------------------------------
set showmatch			" Show matching brackets
set number " Show line numbers
set matchtime=2			" How many tenths of a second to blink
set list
" Reset the listchars
set listchars=""
" a tab should display as "  ", trailing whitespace as "."
set listchars=tab:\ \  " Indentended trailing whitespace
" show trailing spaces as dots
set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<
set nocompatible    " Disable vi-compatibiliy
set laststatus=2    " Always show the status line
set encoding=utf-8  " Necessary to show Unicode glyphs
set t_Co=256        " Explicitly tell Vim that the terminal supports 256 colors

"-------------------------------------
" Sound 
"-------------------------------------
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"-------------------------------------
" Mouse 
"-------------------------------------
set mousehide		" Hide mouse after chars typed
set mouse=a			" Mouse in all modes
