" Minimal settings for nvim
let mapleader = "\<Space>"
let maplocalleader = "\\"
set termguicolors
syntax on

" Bridge to minpac {{{1
function! AddPluginToManager(...) abort
endfunction

" Plugins and config {{{1
source ~/.config/nvim/rcplugins/minpac.vim
source ~/.config/nvim/rcplugins/commentary.vim
source ~/.config/nvim/rcplugins/repeat.vim
source ~/.config/nvim/rcplugins/text-objects.vim
source ~/.config/nvim/rcplugins/surround.vim
source ~/.config/nvim/rcplugins/unimpaired.vim
source ~/.config/nvim/rcplugins/abolish.vim
source ~/.config/nvim/rcplugins/fzf.vim
source ~/.config/nvim/rcplugins/tmux-navigator.vim
" many leader keys: source ~/.config/nvim/rcplugins/tmux-runner.vim
source ~/.config/nvim/rcplugins/statusline.vim
source ~/.config/nvim/rcplugins/themes.vim

" General config {{{1
source ~/.config/nvim/rcfiles/general.vim
source ~/.config/nvim/rcfiles/convenience.vim
source ~/.config/nvim/rcfiles/systemcopy.vim
source ~/.config/nvim/rcfiles/visual.vim
source ~/.config/nvim/rcfiles/active-theme.vim
source ~/.config/nvim/rcfiles/experiment.vim
