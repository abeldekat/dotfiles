" Convenience:
"-------------

" Faster escape
inoremap jj <Esc>
" inoremap <esc> <nop> 

" Windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Quick edit of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Quick sourcing of vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Quick sourcing of the current file, allowing for quick vimrc testing
nnoremap <leader>sp :source %<cr>
" Better flow to command mode
nnoremap <leader>; :

" Just an abbreviation
iabbrev @@ abel@nomail.com

" vim:ft=vim
