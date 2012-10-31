"------------------------------------------
" NERDTree
"------------------------------------------
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif"

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
" TagList
"------------------------------------------
nnoremap <f3> :TlistToggle<cr>
