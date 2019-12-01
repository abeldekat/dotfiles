" vim: nowrap fdm=marker
scriptencoding utf-8

" Minimum requirements for plugin
"set nocompatible
"filetype plugin on

source ~/dotfiles/packages.vim

" Personal preferences not set by sensible.vim  TODO Controleren {{{1 
" runtime macros/matchit.vim
let g:mapleader=','
inoremap jk <Esc>
"syntax on
"set relativenumber 
"set number
"set timeoutlen=1
"set ttimeoutlen=10
"set hidden
"set wildmenu
"set wildmode=full
"set history=200
"set hlsearch
"set incsearch

" Colorscheme {{{1
set termguicolors
set background=light
"silent! colorscheme blue "solarized8_light
" _high _low _flat
"colorscheme solarized8_high

" Always set hidden {{{1
set hidden

" Mappings {{{1
" edit with path in current directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
" hls on redraw screen
nnoremap <C-l> :<C-u>nohlsearch<CR><C-l>


" Airline {{{1
"let g:airline_powerline_fonts = 1

" FZF {{{1
set rtp+=~/.fzf
nnoremap <C-p> :<C-u>FZF<CR>

" TODO {{{1
"find command: set path+=app/**
"Ack, vim plugin also possible, grep is posix, ack is perl compliant
"set grepprg=ack\ --nogroup\ --column\ $*
"set grepformat=%f:%l:%c:%m
