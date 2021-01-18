" --- Solarized 8: dark and light
"This is yet another Solarized theme for Vim. It places itself half way between the original Solarized and the Flattened variant
" The color palette is exactly the same as in Solarized...
" Adds guifg and guibg better suited for truecolor
" colorscheme solarized8, and _high _low _flat
" To use a Solarized 8 color scheme, set the background (dark or light) then
" load the variant you want

Plug 'lifepillar/vim-solarized8'
set background=dark
if (colorlib#currentLinuxThemeIsLight())
	set background=light
endif
let g:my_colorscheme_plugin =  "solarized8_high"
let g:lightline = { 'colorscheme': 'solarized' }

" Nelstrom
function! Solarized8Contrast()
  let l:schemes = map(['_low', '_flat', '', '_high'], '"solarized8".v:val')
  exe 'colors' l:schemes[((1+index(l:schemes, g:colors_name))) % 4] | colo
endfunction

nnoremap <leader>co :<c-u>call Solarized8Contrast()<cr>

" let g:airline_powerline_fonts = 1
" " Same as classic solarized:
" let g:airline_theme = 'solarized'

" vim:ft=vim
