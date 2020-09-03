" --- Classic solarized: dark and light, needs vim-airline themes
" Light will only apply when using the proper xres theme for the terminal
packadd vim-airline-themes 
set background=dark
if (CurrentLinuxThemeIsLight())
	set background=light
endif
packadd vim-colors-solarized
let g:solarized_contrast = 'normal'
colorscheme solarized

set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
packadd vim-airline

" let g:lightline = { 'colorscheme': 'solarized' }
" packadd lightline.vim

" vim:ft=vim
