"-------------------------------------------------------------
" Behaviors 
"-------------------------------------------------------------
set history=700       " Sets how many lines of history VIM has to remember
filetype plugin on    " Enable filetype plugins
filetype indent on
set number
set ignorecase        " Ingnore case when searching
set so=7
set smartcase         " Smart search 
set hlsearch          " Highligt search
set incsearch         " Incremental search
set magic             " Regex
set autoread          " Automatically reload changes if detected
set wildmenu          " Turn on wild menu
set hidden            " Change buffer without saving
set clipboard+=unnamed    " Yanks go on clipboard instead
set timeoutlen=350    " Time to wait for a command
set iskeyword+=$,@    " Add extra chars that are valid variable parts
set nostartofline     " Dont jump to start of line after commands
set scrolloff=5       " Keep three lines below everything
set shortmess+=A      " Always edit file, even whe swap is present
set modifiable
set ttyfast

" Folding
if has('folding')
  if has ('windows')
    let &fillchars='vert: '
  endif
  set foldmethod=indent
  set foldlevelstart=99
endif

" Ignore compiled files
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,
  \.git,node_modules,_site,*.class,*.zip,*.aux,*/.DS_Store

"-------------------------------------------------------------
" VIM user interface
"-------------------------------------------------------------
set ruler             " Always show current position
set hid               " Abadone buffer when empty
" Configure backpace so it acts as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set showmatch        " Matching bracket
set mat=2
set noerrorbells     " Visual bells
set novisualbell
set t_vb=
set tm=500
set nowrap
set nolist

" Bell
set novisualbell
set visualbell t_vb=

"-------------------------------------------------------------
" Colors and Fonts
"-------------------------------------------------------------
syntax on
try
  colorscheme nova
catch
endtry
" Set extra options when running in GUI mode
if has("gui_running")
  set t_Co=256
  set macligatures
  set guifont=Fira\ Code:h18
  set guioptions=egmrt
  set ttimeoutlen=10
  augroup FastEscape
  autocmd!
  au InsertEnter * set timeoutlen=0
  au InsertLeave * set timeoutlen=1000
  augroup END
  set term=xterm
endif
set encoding=utf8
set ffs=unix,dos,mac
set gfn=Fira\ Mono\ for\ Powerline\ 18
set gfn=Fira\ Code:h18

"-------------------------------------------------------------
" Files, backups and undo
"-------------------------------------------------------------
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"-------------------------------------------------------------
" Text, tab and indent related
"-------------------------------------------------------------
set tabstop=2
set backspace=2     " Delete everything with backspace
set shiftwidth=2    " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set nowrap


"-------------------------------------------------------------
" Status line
"-------------------------------------------------------------
set laststatus=2    " Always show the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"-------------------------------------------------------------
" Helper functions
"-------------------------------------------------------------
function! CmdLine(str)
  exe "menu Foo.Bar :" . a:str
  emenu Foo.Bar
  unmenu Foo
endfunction 

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction


"-------------------------------------------------------------
"  Auto Commands
"-------------------------------------------------------------
if has("autocmd")
  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
  \ if line("'\"") > 1 && line ("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

  " Fix trailing whitespace in my most used programming langauges
  autocmd BufWritePre *.py,*.coffee,*.rb silent! :StripTrailingWhiteSpace

  " Omnicomplete
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS

endif
