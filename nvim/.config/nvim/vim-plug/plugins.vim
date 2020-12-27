" auto-install vim-plug {{{1
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins and config {{{1
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Statusline, showmode etc
source ~/.config/nvim/themes/statusline.vim
source ~/.config/nvim/themes/active-theme.vim

" Commentary - Comment / uncomment via text operator w/ text objects
Plug 'tpope/vim-commentary'
" Unimpaired - Pairs of mappings for changing options, adding lines, etc.
Plug 'tpope/vim-unimpaired'
" Repeat - Repeat custom mappings with `.`
Plug 'tpope/vim-repeat'
" Abolish - Working with variants of a word
Plug 'tpope/vim-abolish'
" Surround - Mappings for adding, removing, and changing surrounding characters
Plug 'tpope/vim-surround'
" Fugitive - Vim meets git. Gstatus, Gdiff, etc.
Plug 'tpope/vim-fugitive'

" Vim Tmux Navigator - Seamlessly navigate between vim splits and tmux panes
Plug 'christoomey/vim-tmux-navigator'

" Ack - Integrata ack (grep replacement) into vim
source ~/.config/nvim/rcplugins/ack.vim
" TextObj - Custom text objects for the line, indent level, entier file, etc
source ~/.config/nvim/rcplugins/text-objects.vim

source ~/.config/nvim/rcplugins/fzf.vim

" many leader keys: source ~/.config/nvim/rcplugins/tmux-runner.vim

" Initialize plugin system. Plugins become visible to vim.
call plug#end()

" Automatically install missing plugins on startup {{{1
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | source $MYVIMRC 
  \| endif
