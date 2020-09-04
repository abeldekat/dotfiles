" --- seoul256.vim is a low-contrast Vim color scheme based on Seoul Colors
packadd vim-airline-themes
let g:seoul256_srgb = 1
colorscheme seoul256
set background=dark
if (colorlib#currentLinuxThemeIsLight())
	set background=light
endif

" " Unified color scheme (default: dark)
" colo seoul256

" " Light color scheme
" colo seoul256-light

" " seoul256 (dark):
" "   Range:   233 (darkest) ~ 239 (lightest)
" "   Default: 237
" let g:seoul256_background = 236
" colo seoul256

" " seoul256 (light):
" "   Range:   252 (darkest) ~ 256 (lightest)
" "   Default: 253
" let g:seoul256_background = 256
" colo seoul256

" If g:seoul256_background is set, seoul256 will choose the right version based on the value and set background=dark/light will not switch versions.
" If you'd like to switch versions with custom background colors, set g:seoul256_background to be a dark value, and additionally define g:seoul256_light_background for seoul256-light.
" let g:seoul256_background = 233
" let g:seoul256_light_background = 256

" colo seoul256
" colo seoul256-light

set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme = 'seoul256'
packadd vim-airline
" let g:lightline = { 'colorscheme': 'seoul256' }
" packadd lightline.vim

" vim:ft=vim
