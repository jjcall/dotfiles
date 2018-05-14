" -------------------------------
" Section. Bindings
" -------------------------------
let mapleader = " "

" Treat long lines as break lines
map j gj
map k gk

" Smarter pasting
nnoremap <Leader>p :set invpaste paste?<CR>

" Fixes common typos
map <F1> <Esc>
imap <F1> <Esc>

" Pinky issues
cnoremap w' w<CR>

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

" Jump to beggining and end of line quickly
noremap H ^
noremap L $

" Remap VIM 0 to first non-blank character
map 0 ^

" Normal Mode Remaps
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
noremap H ^
noremap L $
vnoremap L g_

" search and replace word under cursor
nnoremap <leader>r :%s/\<<C-r><C-w>\>/

" Hit jj to exit insert mode
imap jj <Esc>

" -- Smart indent when entering insert mode with i on empty lines --------------
function! IndentWithI()
  if len(getline('.')) == 0
    return "\"_ddO"
  else
    return "i"
  endif
endfunction
nnoremap <expr> i IndentWithI()


nnoremap <silent> <c-j> :TmuxNavigateDown<cr>

" Insert Mode Remaps
set completeopt-=preview

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
" format the entire file
nmap <leader>fef ggVG=

" format json
nmap <leader>fjf :%!python -m json.tool

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Folding
nnoremap <s-tab> za
