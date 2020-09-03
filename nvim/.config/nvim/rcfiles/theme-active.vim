" --- vim-one: atom text editor
"  packadd is necessary for the airline theme in autoload
packadd vim-one
set background=dark
if (CurrentLinuxThemeIsLight())
	set background=light
endif
colorscheme one

set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme = 'one'
packadd vim-airline

" let g:lightline = { 'colorscheme': 'one' } 
" packadd lightline.vim

" vim:ft=vim
