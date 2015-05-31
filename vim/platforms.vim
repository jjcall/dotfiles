" --------------------------------------------------------------
" MacVim
" --------------------------------------------------------------
" " Hide toolbar in MacVim
if has('gui_running')
  set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h16
  set guioptions=egmrt
  set ttimeoutlen=10
  augroup FastEscape
  autocmd!
  au InsertEnter * set timeoutlen=0
  au InsertLeave * set timeoutlen=1000
  augroup END
  set term=xterm
endif
