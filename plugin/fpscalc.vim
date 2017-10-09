if exists("g:fpscalc_loaded")
  finish
endif
let g:fpscalc_loaded = 1

au BufNewFile,BufRead *.fps set filetype=fpscalc

setlocal comments=b:!
setlocal formatoptions+=r
setlocal tabstop=2
setlocal shiftwidth=2
