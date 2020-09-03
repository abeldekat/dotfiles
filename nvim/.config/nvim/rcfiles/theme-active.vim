" --- Ayu: Simple bright and elegant.
" --- Provides airline and lightline themes
" --- Do not set the background.  Three versions.

packadd ayu-vim

" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
if (CurrentLinuxThemeIsLight())
	let ayucolor="light"
endif

colorscheme ayu

 let g:airline_powerline_fonts = 1
 let g:airline_theme = 'ayu'
 packadd vim-airline
" let g:lightline = { 'colorscheme': 'ayu' }
" packadd lightline.vim

" vim:ft=vim
