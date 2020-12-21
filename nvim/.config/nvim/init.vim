" Minimal settings for nvim
let mapleader = "\<Space>"
let maplocalleader = "\\"
set termguicolors
syntax on

" Source plugins and config {{{1
source ~/.config/nvim/vim-plug/plugins.vim

" General config {{{1
source ~/.config/nvim/rcfiles/general.vim
source ~/.config/nvim/rcfiles/convenience.vim
source ~/.config/nvim/rcfiles/systemcopy.vim
source ~/.config/nvim/rcfiles/visual.vim
source ~/.config/nvim/rcfiles/experiment.vim
" source ~/.config/nvim/rcfiles/active-theme.vim
