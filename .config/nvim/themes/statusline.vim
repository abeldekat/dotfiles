" Configure status bar

" No extra INSERT beneath the statusline
set noshowmode
" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
" Taboo aims to ease the way you set the vim tabline. In addition, Taboo provides fews useful utilities for renaming tabs.
Plug 'gcmt/taboo.vim'
" Theme might be set in active-theme.vim
if !exists('g:lightline')
    let g:lightline = {}
endif

" Let lightline hold the tabline, disable taboo rendering
let g:taboo_tabline=0

" Let taboo hold the tabline, disable lightline rendering
" let g:lightline.enable = {
"     \ 'tabline': 0 }

" No close button
let g:lightline.tabline = {
    \ 'right': [ [ '' ] ] 
    \}

" Overwrite the filename tab component function
let g:lightline.tab_component_function = {
    \ 'filename': 'Taboo_or_lightline_filename' 
    \}

function! Taboo_or_lightline_filename(n)
    let taboo_name = TabooTabName(a:n)
    return taboo_name ==# '' ? lightline#tab#filename(a:n) : taboo_name
endfunction

" vim:ft=vim
