let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>

"-------------------------------------------------------------
" Moving Around 
"-------------------------------------------------------------
" Treat long lines as break lines
map j gj
map k gk

" Fixes common typos
map <F1> <Esc>
imap <F1> <Esc>

" Pinky issues
cnoremap w' w<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,
  \.git,node_modules,_site,*.class,*.zip,*.aux

" Open a vertical/horizontal split, switch over to it
nnoremap <leader>s <C-w>s<C-w>j
nnoremap <leader>v <C-w>v<C-w>l

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Expands to current directory in command mode
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Jump to beggining and end of line quickly
noremap H ^
noremap L $

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
noremap H ^
noremap L $
vnoremap L g_

" search and replace word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Hit jj to exit insert mode
imap jj <Esc>

"-------------------------------------------------------------
" Spell Checking
"-------------------------------------------------------------
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"-------------------------------------------------------------
" Misc commands
"-------------------------------------------------------------
"" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./-/g\|:nohls<cr>

" format the entire file
nmap <leader>fef ggVG=

" format json
nmap <leader>fjf :%!python -m json.tool

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>
 
" Toggle paste
set pastetoggle=<F4>



