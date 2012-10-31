"------------------------------------------
" Bindings
"------------------------------------------
" Set leader to ,
" Note: This line MUST come before any <leader> mapping
let mapleader=","

" Fixes common typos
command! W w
command! Q q
map <F1> <Esc>
imap <F1> <Esc>

" Pinky issues
cnoremap w' w<CR>

" Removes doc lookup binding becuase it's easy to fat finger
nmap K k
vmap K k

" Make line completion easier
imap <C-l> <C-x><C-l>

" Expands to current directory in command mode
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Yank entire buffer!
nmap gy :%y+<cr>

" Make Y Behave normal like other capital commands
nnoremap Y y$

" Jump to beggining and end of line quickly
noremap H ^
noremap L $

" Clear search
map <silent><Leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-o>

" Hit jj to exit insert mode
imap jj <Esc>

" Open a vertical/horizontal split, switch over to it
nnoremap <leader>s <C-w>s<C-w>j
nnoremap <leader>v <C-w>v<C-w>l

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"------------------------------------------
" Leader Commands
"------------------------------------------
" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./-/g\|:nohls<cr>

" format the entire file
nmap <leader>fef ggVG=
