" A light vim colorscheme based on github's syntax highlighting. Originally created by Anthony Carapetis
" Note: No xresources. Github-light.Xcolors is actually
" gruvbox-light-hard.Xcolors 

" Plug 'endel/vim-github-colorscheme' 
" let g:my_colorscheme_plugin = "github"
" let g:lightline = {}

Plug 'romgrk/github-light.vim'
let g:my_colorscheme_plugin = "github-light"
let g:lightline = { 'colorscheme': 'github_light' }

" vim:ft=vim
