" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" deoplete filetypes
autocmd FileType text let b:deoplete_disable_auto_complete = 1
autocmd FileType tex let b:deoplete_disable_auto_complete = 1
autocmd FileType markdown let b:deoplete_disable_auto_complete = 1

" Map `<tab>` to Deoplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:deoplete#omnifunctions = {}
let g:deoplete#omnifunctions.javascript = [
  \ 'tern#Compelte',
\]
set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
