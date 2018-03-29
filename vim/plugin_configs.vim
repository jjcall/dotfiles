"-------------------------------------------------------------
" Vim Javascript 
"-------------------------------------------------------------
let g:javascript_plugin_flow = 1

"-------------------------------------------------------------
" Ack
"-------------------------------------------------------------
" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" Open Ack and put the cursor in the right position
map <Leader>a :Ack!<space>
map <Leader>h :nohlsearch<CR>

"-------------------------------------------------------------
" NERDTree
"-------------------------------------------------------------
nnoremap <leader>2 :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let NERDTreeHighlightCursorline=1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowFiles=1
let g:NERDTreeShowBookmarks=1

" Change the NERDTree directory to the root node
let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI=1

"-------------------------------------------------------------
" YCM 
"-------------------------------------------------------------
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"-------------------------------------------------------------
" UltiSnips
"-------------------------------------------------------------
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"-------------------------------------------------------------
" Lightline
"-------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤"
  else
    return ""
  endif
endfunction

function! LightLineFugitive()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

"-------------------------------------------------------------
" Syntastic
"-------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ------------------------------------------------------------
" FZF
" ------------------------------------------------------------
set rtp+=/usr/local/opt/fzf
let $FZF_DEFAULT_COMMAND = 'ag --path-to-ignore ~/.ignore --hidden -g ""'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--path-to-ignore ~/.ignore --hidden', <bang>0)

" ------------------------------------------------------------
" VIM-POLYGLOT 
" ------------------------------------------------------------
let g:javascript_plugin_flow = 1

" ------------------------------------------------------------
" ALE 
" ------------------------------------------------------------
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_linters = {
\  'sh': ['shell'],
\  'typescript': ['tsserver', 'typecheck', 'tslint'],
\  'javascript': ['flow', 'eslint'],
\}
let g:ale_fixers = {
\  'sh': ['shfmt'],
\  'typescript': ['tslint', 'prettier'],
\  'javascript': ['eslint', 'prettier'],
\  'json': ['prettier'],
\  'markdown': ['prettier'],
\  'css': ['prettier'],
\}
let g:ale_pattern_options = {
\  'repos/edgar': {
\    'ale_fixers': {
\      'sh': [],
\      'javascript': ['eslint'],
\      'json': [],
\      'markdown': [],
\      'css': [],
\    },
\  },
\}
