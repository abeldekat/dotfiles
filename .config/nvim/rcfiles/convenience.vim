" Convenience:
"-------------

" Faster escape,j; is also a candidate 
inoremap jk <Esc>
" inoremap <esc> <nop> 

" Better flow to command mode
nnoremap <leader>; :
" Better flow to command window
nnoremap <leader>q q:

" Q for Ex mode is useless. This will run the macro in q register
nnoremap Q @q

" Easy expansion of the active file directory
cnoremap <expr> %% getcmdtype() == ':' ? expand("%:h") . '/' : '%%'

" Just an abbreviation
" iabbrev @@ abel@nomail.com

" Vimscript file settings --------------------{{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" vim:ft=vim
