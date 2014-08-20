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
let g:syntastic_quiet_messages = {'level': 'warnings'}

"------------------------------------------
" Ctrl-P
"------------------------------------------
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': '',
  \ }

"------------------------------------------
" Airline
"------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'
endif

"------------------------------------------
" YCM + UltiSnips
"------------------------------------------
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<s-c-j>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

"------------------------------------------
" JS Beautifuy
"------------------------------------------
 map <c-f> :call JsBeautify()<cr>
