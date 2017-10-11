if exists("g:fpscalc_loaded")
  finish
endif
let g:fpscalc_loaded = 1

au BufNewFile,BufRead *.fps set filetype=fpscalc

au FileType fpscalc setlocal comments=b:!
au FileType fpscalc setlocal formatoptions+=r
au FileType fpscalc setlocal tabstop=2
au FileType fpscalc setlocal shiftwidth=2
