" --- Papercolor: dark and light
" --- Documentation:
"  https://github.com/NLKNguyen/papercolor-theme/blob/master/DESIGN.md
packadd vim-airline-themes 
packadd papercolor-theme
set background=dark
if (colorlib#currentLinuxThemeIsLight())
	set background=light
endif
colorscheme PaperColor

set noshowmode

let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
packadd vim-airline

" let g:lightline = { 'colorscheme': 'PaperColor' }
" packadd lightline.vim

" vim:ft=vim
