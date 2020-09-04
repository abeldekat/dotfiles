" --- gruvbox medium hard soft: dark and light
packadd gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
set background=dark
if (colorlib#currentLinuxThemeIsLight())
	set background=light
endif
colorscheme gruvbox

set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
packadd vim-airline
" let g:lightline = { 'colorscheme': 'gruvbox' }
" packadd lightline.vim

" vim:ft=vim
