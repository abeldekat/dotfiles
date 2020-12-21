" --- gruvbox medium hard soft: dark and light
Plug 'morhetz/gruvbox'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
set background=dark
if (colorlib#currentLinuxThemeIsLight())
	set background=light
endif
let g:my_colorscheme_plugin = "gruvbox"
let g:lightline = { 'colorscheme': 'gruvbox' }

" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'gruvbox'

" vim:ft=vim
