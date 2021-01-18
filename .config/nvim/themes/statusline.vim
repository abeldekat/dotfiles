" Configure status bar

Plug 'itchyny/lightline.vim'
set noshowmode
if exists('g:lightline')
    let g:lightline.tabline = {
        \ 'right': [ [ '' ] ] }
endif

"call AddPluginToManager('vim-airline/vim-airline', {'type': 'opt'})
"call AddPluginToManager('vim-airline/vim-airline-themes', {'type': 'opt'})
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_statusline_ontop=1

" vim:ft=vim
