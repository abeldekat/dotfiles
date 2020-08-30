
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-commentary')
call minpac#add('kana/vim-textobj-user')
call minpac#add('kana/vim-textobj-entire')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('christoomey/vim-tmux-runner')
call minpac#add('junegunn/fzf.vim')
call minpac#add('itchyny/lightline.vim', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline-themes', {'type': 'opt'})
call minpac#add('morhetz/gruvbox', {'type': 'opt'})
call minpac#add('joshdick/onedark.vim', {'type': 'opt'})
call minpac#add('NLKNguyen/papercolor-theme', {'type': 'opt'})
call minpac#add('altercation/vim-colors-solarized', {'type': 'opt'})
" call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})

command! Pupdate source $MYVIMRC | call minpac#update()
command! Pclean  source $MYVIMRC | call minpac#clean()
command! Pstatus source $MYVIMRC | call minpac#status()

let mapleader=','

" Colors and theme  {{{2
set termguicolors
" use yob mapping vim impaired
set background=dark 
syntax on

" --- gruvbox medium hard soft: dark and light
packadd gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox
" --- onedark: Only dark, atom text editor
" packadd onedark.vim
" colorscheme onedark
" --- Papercolor: dark and light, needs vim-airline themes
" packadd vim-airline-themes 
" packadd papercolor-theme
" colorscheme PaperColor
" --- Classic solarized: dark and light, needs vim-airline themes
" --- Light will only apply when using the proper xres theme for the terminal
" packadd vim-airline-themes 
" packadd vim-colors-solarized
" let g:solarized_contrast = 'normal'
" colorscheme solarized
" " --- tempus
" colorscheme tempus_warp

" statusbar
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
" let g:airline_theme = 'onedark'
" let g:airline_theme = 'papercolor'
" let g:airline_theme = 'solarized'
packadd vim-airline
" let g:lightline = { 'colorscheme': 'gruvbox' }
" let g:lightline = { 'colorscheme': 'onedark' } 
" let g:lightline = { 'colorscheme': 'PaperColor' }
" packadd lightline.vim

" Faster escape {{{2
inoremap jj <Esc>
inoremap <esc> <nop> 

" Windows {{{2
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" FZF {{{2
nnoremap <C-p> :<C-u>FZF<CR>

" Tmux {{{2
" Chris Toomey tmux vim layout balancing
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
" Vim-tmux-runner VTR
let g:VtrUseVtrMaps = 1
