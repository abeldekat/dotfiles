" Minimum requirements for plugin
set nocompatible
filetype plugin on

source ~/dotfiles/packages.vim

runtime macros/matchit.vim
syntax on
set relativenumber 
set number
set timeoutlen=1
set ttimeoutlen=10
set hidden
set wildmenu
set wildmode=full
set history=200
set hlsearch
set incsearch

" Colorscheme
set termguicolors
set background=light
"silent! colorscheme blue "solarized8_light
" _high _low _flat
colorscheme solarized8_high

"find command: set path+=app/**

"tabstop default 8
"shift working properly set shiftwidth=4 softtabstop=4 expandtab

"Disable arrows, do something more useful
"nnoremap <up>    <nop>
"nnoremap <down>  <nop>
"nnoremap <left>  <nop>
"nnoremap <right> <nop>
"inoremap <up>    <nop>
"inoremap <down>  <nop>
"inoremap <left>  <nop>
"inoremap <right> <nop>

let mapleader=','
inoremap jk <Esc>

" hls on redraw screen
nnoremap <C-l> :<C-u>nohlsearch<CR><C-l>

" edit with path in current directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

set rtp+=~/.fzf

let g:airline_powerline_fonts = 1

" FZF
nnoremap <C-p> :<C-u>FZF<CR>

"Ack, vim plugin also possible, grep is posix, ack is perl compliant
"set grepprg=ack\ --nogroup\ --column\ $*
"set grepformat=%f:%l:%c:%m
