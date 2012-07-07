" Use Vim setting, rath than Vi settings
set nocompatible

" Start by having Pahthogen load any external bundles
call pathogen#infect()
syntax on
filetype plugin indent on

set number
set ruler
set nowrap
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" A tab should display as "  ", trailing whitespace as "."
set listchars=tab:\ \             

" Search
set incsearch " search as you type
set hlsearch "highlight matches 
set ignorecase " make searching case insensitive
set smartcase " unless there is a uppercase character
nnoremap <leader><space> :noh<cr>

" space to invoke search
:nmap <Space> /

" Powerline
" let g:Powerline_symbols = 'fancy'
set laststatus=2

" Disable swap and backup so that codekit can compile
set nobackup
set nowritebackup
set noswapfile

" Map <leader> to ,
let mapleader = ","
map <Leader>ee :tabedit $MYVIMRC<CR>

" Source while editing
if has("autocmd")
  autocmd bufwritepost vimrc source $MYVIMRC
endif

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Snips
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

" Remove MacVim Toolbar
if has("gui_running")
  set guioptions=egmrt
endif

" Use solarized
set background=dark
colorscheme solarized
set enc=utf-8 gfn=Bitstream\ Vera\ Sans\ Mono:h14

" Hit jj to exit insert mode
imap jj <Esc>

" Minimum number of lines below/above the cursor when scrolling
set scrolloff=3

" Open a vertical/horizontal split, switch over to it
nnoremap <leader>s <C-w>s<C-w>j
nnoremap <leader>v <C-w>v<C-w>l

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Tab navigation
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>

" Ack options
map <Leader>a :Ack!<space>
map <Leader>h :nohlsearch<CR>

" Nerdtree Options
nnoremap <F2> :NERDTreeToggle<CR>
" Close NERDTree when opening buffer
let NERDTreeQuitOnOpen = 1
" open up a NERDtree at startup if there are no files provided
autocmd vimenter * if !argc() | NERDTree | endif
" Close Vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERTreeType == "primary") | q | endif

"Toggle Taglist
nnoremap <f3> :TlistToggle<cr>

" Spell check when writing commit logs
autocmd BufRead COMMIT_EDITMSG setlocal spell!

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" " (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %'

" Omnicomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Execute file being edited with <Shift> + e:
 map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

let g:lua_complete_omni = 1

" Start the Corna Simulator with F3 for iPhone skin. Shift-F3 for iPad skin.
map <F5> :!/Applications/CoronaSDK/simulator -project %:p -skin iPhone<CR>
map <S-F5> :!/Applications/CoronaSDK/simulator -project %:p -skin iPhone4<CR>
map <C-F5> :!/Applications/CoronaSDK/simulator -project %:p -skin iPad<CR>
