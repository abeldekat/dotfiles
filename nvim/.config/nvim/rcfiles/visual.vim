" Tmux
" Chris Toomey tmux vim layout balancing
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Remember: ctrl-f, more editing power from command line to window.
" set cmdwinheight=25
" vim:ft=vim
