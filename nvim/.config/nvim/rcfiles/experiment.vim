"set path+=**
" autocmd FileType javascript nnoremap <localleader>c I//<esc>
" autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
" nnoremap <leader>g :silent exe "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

"Also possible, the hlsearch command muting until the next search
" nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

set smartcase
