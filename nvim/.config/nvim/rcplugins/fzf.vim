" fzf - the fuzzy finder of all the things

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" call AddPluginToManager('junegunn/fzf.vim')

" let g:fzf_files_options =
"   \ '--reverse ' .
"   \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
" let g:fzf_layout = { 'down': '~60%' }
nnoremap <C-p> :Files<cr>
" let $FZF_DEFAULT_COMMAND = 'ag -g "" --hidden'
" Dit had ik: nnoremap <C-p> :<C-u>FZF<CR>

" nnoremap <leader>ga :Files app/<cr>
" nnoremap <leader>gm :Files app/models/<cr>
" nnoremap <leader>gv :Files app/views/<cr>
" nnoremap <leader>gc :Files app/controllers/<cr>
" nnoremap <leader>gy :Files app/assets/stylesheets/<cr>
" nnoremap <leader>gj :Files app/assets/javascripts/<cr>
" nnoremap <leader>gs :Files spec/<cr>

" vim:ft=vim
