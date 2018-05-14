"-------------------------------------------------------------
" Ack
"-------------------------------------------------------------
" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" Open Ack and put the cursor in the right position
map <Leader>a :Ack!<space>
map <Leader>h :nohlsearch<CR>
