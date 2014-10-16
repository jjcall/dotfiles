" ----------------------------------------
"  " Auto Commands
"  " ----------------------------------------
"
if has("autocmd")
  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
  \ if line("'\"") > 1 && line ("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

  " Fix trailing whitespace in my most used programming langauges
  autocmd BufWritePre *.py,*.coffee,*.rb silent! :StripTrailingWhiteSpace
  
  " Source while editing"
  autocmd bufwritepost vimrc source $MYVIMRC

  "-------------------------------------
  " OmniComplete 
  "-------------------------------------
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP

  " Source the vimrc file after saving it
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd bufwritepost config.vim source $MYVIMRC
  autocmd bufwritepost bindings.vim source $MYVIMRC
  autocmd bufwritepost autocmds.vim source $MYVIMRC
  autocmd bufwritepost functions.vim source $MYVIMRC
  autocmd bufwritepost platforms.vim source $MYVIMRC
  autocmd bufwritepost plugin_configs.vim source $MYVIMRC
endif
