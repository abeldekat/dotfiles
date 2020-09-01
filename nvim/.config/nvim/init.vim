
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
call minpac#add('sonph/onehalf', {'type': 'opt', 'subdir': 'vim/'})
call minpac#add('rakr/vim-one', {'type': 'opt'})
call minpac#add('drewtempelmeyer/palenight.vim', {'type': 'opt'})
call minpac#add('NLKNguyen/papercolor-theme', {'type': 'opt'})
call minpac#add('altercation/vim-colors-solarized', {'type': 'opt'})
call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})
call minpac#add('dracula/vim', {'type': 'opt', 'name': 'dracula'})
call minpac#add('nanotech/jellybeans.vim', {'type': 'opt'})
call minpac#add('ayu-theme/ayu-vim', {'type': 'opt'})

" Todo Molokai and onehalf https://www.dunebook.com/best-vim-themes/
" gruvbox controleer cursorColor met iterm repo van ayu

command! Pupdate source $MYVIMRC | call minpac#update()
command! Pclean  source $MYVIMRC | call minpac#clean()
command! Pstatus source $MYVIMRC | call minpac#status()

let mapleader=','
set clipboard+=unnamedplus

" Colors and theme  {{{2
set termguicolors
" use yob mapping vim impaired
set background=dark 
" set background=light 
syntax on

" --- gruvbox medium hard soft: dark and light
" packadd gruvbox
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_contrast_light = 'hard'
" colorscheme gruvbox
" --- onedark: Only dark, atom text editor
" packadd onedark.vim
" colorscheme onedark
" --- onehalf: atom text editor
packadd onehalf
" colorscheme onehalfdark
colorscheme onehalflight
" --- vim-one: atom text editor
"  packadd is necessary for the airline theme in autoload
" packadd vim-one
" colorscheme one
" --- palenight.vim: atom text editor
" A dark color scheme based off Material Pale Night. Based on onedark.vim.
" Needs packadd!
" packadd palenight.vim
" colorscheme palenight
" --- Papercolor: dark and light
" packadd vim-airline-themes 
" packadd papercolor-theme
" colorscheme PaperColor
" --- Classic solarized: dark and light, needs vim-airline themes
" Light will only apply when using the proper xres theme for the terminal
" packadd vim-airline-themes 
" packadd vim-colors-solarized
" let g:solarized_contrast = 'normal'
" colorscheme solarized
" --- Solarized 8: dark and light
" If you use Vim packages, there is no need to packadd solarized8. Keep your runtimepath clean!
" The color palette is exactly the same as in Solarized...
" Adds guifg and guibg better suited for truecolor
" colorscheme solarized8, and _high _low _flat
" packadd vim-airline-themes 
" colorscheme solarized8_high
" --- Dracula: A dark theme
" packadd dracula
" colorscheme dracula
" --- Jellybeans: A colorful, dark color scheme, inspired by ir_black and twilight.
" packadd vim-airline-themes 
" colorscheme jellybeans
" --- Ayu: Simple bright and elegant.
" packadd ayu-vim
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu
" " --- tempus
" colorscheme tempus_warp

" statusbar
set noshowmode
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'gruvbox'
" let g:airline_theme = 'onedark'
" let g:airline_theme = 'onehalfdark'
" let g:airline_theme = 'onehalflight'
" let g:airline_theme = 'one'
" let g:airline_theme = 'palenight'
" let g:airline_theme = 'papercolor'
" let g:airline_theme = 'solarized'
" let g:airline_theme = 'dracula'
" let g:airline_theme = 'jellybeans'
" let g:airline_theme = 'ayu'
" packadd vim-airline
" let g:lightline = { 'colorscheme': 'gruvbox' }
" let g:lightline = { 'colorscheme': 'onedark' } 
let g:lightline = { 'colorscheme': 'onehalfdark' } 
" let g:lightline = { 'colorscheme': 'one' } 
" let g:lightline = { 'colorscheme': 'palenight' } 
" let g:lightline = { 'colorscheme': 'PaperColor' }
" let g:lightline = { 'colorscheme': 'solarized' }
" let g:lightline = { 'colorscheme': 'dracula' }
" let g:lightline = { 'colorscheme': 'jellybeans' }
" let g:lightline = { 'colorscheme': 'ayu' }
packadd lightline.vim

" Faster escape {{{2
inoremap jj <Esc>
" inoremap <esc> <nop> 

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
