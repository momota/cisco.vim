" Vim ftdetect file
" Language: cisco
" Maintainer: Makoto Momota <makoto.momota@gmail.com>
autocmd BufNewFile,BufReadPost *.cisco set filetype=cisco

function! s:isSwitchConfig()
  let firstline = getline(1)
  let secondline = getline(2)
  " Dell - DNOS 6
  if firstline =~# '^!Current Configuration' | return 1 | en
  " Dell / Force10 - DNOS 9
  if secondline =~# '^! Last configuration change at' | return 1 | en
  return 0
endfunction

augroup cisco_ftype
    au!
    au BufNewFile,BufRead * if s:isSwitchConfig() | set filetype=cisco | en
augroup END
