"------------------------------------------
" NERDTree
"------------------------------------------
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let NERDTreeHighlightCursorline=1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowFiles=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI=1

"------------------------------------------
" Snipmate
"------------------------------------------
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

"------------------------------------------
" Ack
"------------------------------------------
map <Leader>a :Ack!<space>
map <Leader>h :nohlsearch<CR>


"------------------------------------------
" Syntastic
"------------------------------------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loclist=1
let g:syntastic_quiet_warnings=0

"------------------------------------------
" Powerline
"------------------------------------------
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

"------------------------------------------
" Emmet
"------------------------------------------
