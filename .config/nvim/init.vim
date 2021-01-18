" Minimal settings for nvim
let mapleader = "\<Space>"
let maplocalleader = "\\"
set termguicolors
syntax on

" Improve editing vimrc --------------------{{{
" edit vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>
" edit plugins
nnoremap <leader>ep :e ~/.config/nvim/plugins.vim<cr>
" edit config
nnoremap <leader>ec :e ~/.config/nvim/config.vim<cr>
" Quick sourcing of vimrc
nnoremap <leader>sv :w<cr>:source $MYVIMRC<cr>
" Quick sourcing of the current file, allowing for quick vimrc testing
nnoremap <leader>sp :w<cr>:source %<cr>
" }}}

" Source plugins and their config
source ~/.config/nvim/plugins.vim

" Source vim config
source ~/.config/nvim/config.vim

" vim:ft=vim
