" --------------------------------------------------------------
" MacVim
" --------------------------------------------------------------
" " Hide toolbar in MacVim
if has('gui_running')
  set macligatures
  set guifont=Fira\ Code:h18
  set guioptions=egmrt
  set ttimeoutlen=10
  augroup FastEscape
  autocmd!
  au InsertEnter * set timeoutlen=0
  au InsertLeave * set timeoutlen=1000
  augroup END
  set term=xterm
endif
