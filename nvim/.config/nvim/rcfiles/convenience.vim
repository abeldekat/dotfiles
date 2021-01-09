" Convenience:
"-------------

" Faster escape,j; is also a candidate 
inoremap jk <Esc>
" inoremap <esc> <nop> 

" Windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

" Improve editing vimrc --------------------{{{
" Quick edit of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Quick sourcing of vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Quick sourcing of the current file, allowing for quick vimrc testing
nnoremap <leader>sp :source %<cr>
" }}}

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
