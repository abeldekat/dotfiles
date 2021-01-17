" Minimal settings for nvim
let mapleader = "\<Space>"
let maplocalleader = "\\"
set termguicolors
syntax on

" Improve editing vimrc --------------------{{{
" Quick edit of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Quick sourcing of vimrc
nnoremap <leader>sv :w | source $MYVIMRC<cr>
" Quick sourcing of the current file, allowing for quick vimrc testing
nnoremap <leader>sp :w | source %<cr>
" }}}
"
" Source plugins and their config
source ~/.config/nvim/plugins.vim

" General config {{{1
source ~/.config/nvim/config.vim

" vim:ft=vim
