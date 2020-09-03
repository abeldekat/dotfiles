" --- Solarized 8: dark and light
"This is yet another Solarized theme for Vim. It places itself half way between the original Solarized and the Flattened variant
"
" If you use Vim packages, there is no need to packadd solarized8. Keep your runtimepath clean!
" The color palette is exactly the same as in Solarized...
" Adds guifg and guibg better suited for truecolor
" colorscheme solarized8, and _high _low _flat
" To use a Solarized 8 color scheme, set the background (dark or light) then
" load the variant you want
"
packadd vim-airline-themes 
set background=dark
if (CurrentLinuxThemeIsLight())
	set background=light
endif
colorscheme solarized8_high

set noshowmode
let g:airline_powerline_fonts = 1
" Same as classic solarized:
let g:airline_theme = 'solarized'
packadd vim-airline

" let g:lightline = { 'colorscheme': 'solarized' }
" packadd lightline.vim

" vim:ft=vim
