" MacVim
" Custom menlo font for powerline
set guifont=Menlo\ for\ Powerline:h12

" Hide toolbar in MacVim
if has('gui_running')
  set guioptions=egmrt

  :macm Window.Previou\ Tab key=<D-S-Left>
  :macm Window.Next\ Tab key=<D-S-Right>
endif
