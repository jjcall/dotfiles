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
set foldlevelstart=99 " Remove folds
set iskeyword+=$,@    " Add extra chars that are valid variable parts
set nostartofline     " Dont jump to start of line after commands
set scrolloff=5       " Keep three lines below everything
set shortmess+=A      " Always edit file, even whe swap is present
set modifiable
set ttyfast

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif

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
syntax enable 
try
  colorscheme Tomorrrow-Night
catch
endtry
" Set extra options when running in GUI mode
if has("gui_running")
  set t_Co=256
  set guifont=Fira\ Mono\ for\ Powerline:h18
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
" Visual mode related
"-------------------------------------------------------------
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

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

function! VisualSelection(direction, extra_filter) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  elseif a:direction == 'gv'
    call CmdLine("Ack \"" . l:pattern . "\" " )
  elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  elseif a:direction == 'f'
    execute "normal /" . l:pattern . "^M"
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
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
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP

  " Python related tab settings
  autocmd FileType python set sw=4
  autocmd FileType python set ts=4
  autocmd FileType python set sts=4

  augroup reload_vimrc
      autocmd!
      autocmd bufwritepost $MYVIMRC nested source $MYVIMRC 
  augroup END
endif
