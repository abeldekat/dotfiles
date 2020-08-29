
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
call minpac#add('vim-airline/vim-airline')
"call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('morhetz/gruvbox', {'type': 'opt'})
call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})

command! Pupdate source $MYVIMRC | call minpac#update()
command! Pclean  source $MYVIMRC | call minpac#clean()
command! Pstatus source $MYVIMRC | call minpac#status()

let mapleader=','

set termguicolors
" medium hard soft
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'medium'
" use yob mapping vim impaired
set background=dark 

let g:airline_powerline_fonts = 1

autocmd vimenter * colorscheme gruvbox

" Vim-tmux-runner VTR {{{2
let g:VtrUseVtrMaps = 1

" Faster escape {{{2
inoremap jj <Esc>
inoremap <esc> <nop> 

" Windows {{{2
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-p> :<C-u>FZF<CR>

" Chris Toomey tmux vim layout balancing
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
