"-------------------------------------
" Vim setup
"-------------------------------------

"-------------------------------------
" Color
"-------------------------------------
let g:hybrid_use_Xresources = 1
colorscheme hybrid

"-------------------------------------
" Backups, Tmp Files, and Undo
"-------------------------------------
set nobackup " Needed for CodeKit to compile on save
set nowritebackup " CodeKit requirement
set noswapfile
set directory=~/.vim/.tmp
set undofile
set undodir=~/.vimour.undo

"-------------------------------------
" UI
"-------------------------------------
set ruler			" Ruler on
set number			" Line numbers on
set nowrap			" Line wrapping off
set laststatus=2		" Always show the statusline
set noshowmode			" Powerline takes care of it
set title			" Set the title of the window in term
if exists('+colorcolumn')
  set colorcolumn=80
endif

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
set scrolloff=3			" Keep three lines below everything

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

"-------------------------------------
" Sound 
"-------------------------------------
set noerrorbells
set novisualbell
set t_vb=

"-------------------------------------
" Mouse 
"-------------------------------------
set mousehide			" Hide mouse after chars typed
set mouse=a			" Mouse in all modes
