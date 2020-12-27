" --- Papercolor: dark and light
" --- Documentation:
"  https://github.com/NLKNguyen/papercolor-theme/blob/master/DESIGN.md

Plug 'NLKNguyen/papercolor-theme'
set background=dark
if (colorlib#currentLinuxThemeIsLight())
	set background=light
endif
let g:my_colorscheme_plugin = "PaperColor"
let g:lightline = { 'colorscheme': 'PaperColor' }

" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'papercolor'

" vim:ft=vim
