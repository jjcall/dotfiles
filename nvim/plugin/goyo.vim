function! ProseMode()
  call goyo#execute(0, [])
  set spell noci nosi noai nolist noshowmode noshowcmd
  set complete+=s
endfunction

command! ProseMode call ProseMode()
nmap \p :ProseMode<CR>

