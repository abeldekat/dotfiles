" Configure status bar

" No extra INSERT beneath the statusline
set noshowmode

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
" Taboo aims to ease the way you set the vim tabline. In addition, Taboo provides fews useful utilities for renaming tabs.
Plug 'gcmt/taboo.vim'
" Theme might be set in active-theme.vim otherwise initialize the global
" dictionary
if !exists('g:lightline')
    let g:lightline = {}
endif

" Quick sourcing of vimrc with correct colorscheme in statusbar
nnoremap <leader>svl :w<cr>:source $MYVIMRC<cr>:call LightlineReload()<cr>

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

let g:lightline.active = {
      \     'left': [['mode', 'paste'], ['readonly', 'relativepath', 'modified']],
      \     'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype']]
      \}

let g:lightline.inactive = {
      \     'left': [['absolutepath']],
      \     'right': [['lineinfo'], ['percent']]
      \   }

" Let lightline show the filename as set with Taboo
function! Taboo_or_lightline_filename(n)
    let taboo_name = TabooTabName(a:n)
    return taboo_name ==# '' ? lightline#tab#filename(a:n) : taboo_name
endfunction

function! LightlineReload()
    call lightline#disable()
    call lightline#enable()
endfunction

" vim:ft=vim
