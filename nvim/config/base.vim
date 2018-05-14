" -------------------------------
" Section. General Config
" -------------------------------

let &runtimepath .= "," . $DOTFILES . "/nvim"  " Add DOTFILES to runtimepath
let &packpath .= "," . $DOTFILES . "/nvim"

set shell=zsh     " Set bash as the prompt for Vim
set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands
set noshowmode
set timeoutlen=1000
set ttimeoutlen=0
set shiftround
set scrolloff=3
set inccommand=nosplit

" Text, tab & Indentation ------
set tabstop=2
set backspace=2   " Backspace deletes like most programs in insert mode
set shiftwidth=2
set cindent
set autoindent
set smarttab
set expandtab

" Vim UI ------
set ruler         " show the cursor position all the time
set hidden
set hid
set whichwrap+=<,>,h,l
set showmatch
set mat=2
set nowrap
set nolist
set laststatus=2  " Always display the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set list listchars=tab:»·,trail:·  " Display extra whitespace characters
set number
set numberwidth=5
set splitbelow
set splitright
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Navigation ------

" Files, backups & undo ------
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50


" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-7.add

" Highlight search matches
set hlsearch

" Powerline Font Stuff
set guifont=Hack\ Nerd\ Font\ 16

" Make it obvious where 120 characters is
" Lifted from StackOverflow user Jeremy W. Sherman
" http://stackoverflow.com/a/3765575/2250435
if exists('+colorcolumn')
  set textwidth=120
  set colorcolumn=+1
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif


"Python stuff
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Configure grep to use The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
endif

" Ignore compiled files
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,
  \.git,node_modules,_site,*.class,*.zip,*.aux,*/.DS_Store

" -------------------------------
" Section. Auto Commands
" -------------------------------
if has("autocmd")
  filetype plugin indent on

  autocmd BufReadPost * "
    " When editing a file, always jump to the last known cursor position.
    " Don't do it for commit messages, when the position is invalid, or when
    " inside an event handler (happens when dropping a file on gvim).
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Automatically clean trailing whitespace
  autocmd BufWritePre * :%s/\s\+$//e

  autocmd BufRead,BufNewFile COMMIT_EDITMSG call pencil#init({'wrap': 'soft'})
                                        \ | set textwidth=0

  autocmd BufRead,BufNewFile *.md set filetype=markdown

  autocmd BufRead,BufNewFile .eslintrc,.jscsrc,.jshintrc,.babelrc set ft=json

  autocmd BufRead,BufNewFile gitconfig set ft=.gitconfig

  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

  autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

  au! BufRead,BufNewFile *.tsx       setfiletype typescript
endif


" -------------------------------
" Section. Plugins Config
" -------------------------------
" Load plugin configurations
" For some reason, a few plugins seem to have config options that cannot b
" placed in the `plugins` directory. Those settings can be found here instead.

" vim-airline
let g:airline_powerline_fonts = 1 " Enable the patched Powerline fonts

" emmet-vim
let g:user_emmet_leader_key='<C-E>'

let g:user_emmet_settings = {
  \    'html' : {
  \        'quote_char': "'"
  \    }
  \}

" -------------------------------
" Section. Theme
" -------------------------------
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
colorscheme nova

" -------------------------------
" Section. Local Machine Config
" -------------------------------
if filereadable($DOTFILES . "/nvim/init.local.vim")
  source $DOTFILES/nvim/init.local.vim
endif

"========================================
" Some Configs Dont Work In Their Own File
"========================================
" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" deoplete filetypes
autocmd FileType text let b:deoplete_disable_auto_complete = 1
autocmd FileType tex let b:deoplete_disable_auto_complete = 1
autocmd FileType markdown let b:deoplete_disable_auto_complete = 1
