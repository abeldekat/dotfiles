" --- onehalf: atom text editor
packadd onehalf
let isLight = CurrentLinuxThemeIsLight()
if (isLight)
	colorscheme onehalflight
else	
	colorscheme onehalfdark
endif

set noshowmode
let g:airline_powerline_fonts = 1
if (isLight)
	let g:airline_theme = 'onehalflight'
else
	let g:airline_theme = 'onehalfdark'
endif
packadd vim-airline

" onehalflight for lightline does not exist
" let g:lightline = { 'colorscheme': 'onehalfdark' } 
" packadd lightline.vim

" vim:ft=vim
