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
source ~/.config/nvim/themes/active-theme.vim
source ~/.config/nvim/themes/statusline.vim

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
" Vinegar enhances netrw, the built-in file browser
" Plug 'tpope/vim-vinegar'
" Path navigator designed to work with Vim's built-in mechanisms and complementary plugins.
Plug 'justinmk/vim-dirvish'
" A Vim plugin for making Vim plugins
Plug 'tpope/vim-scriptease'
" Vim Tmux Navigator - Seamlessly navigate between vim splits and tmux panes
Plug 'christoomey/vim-tmux-navigator'

" Projectionist provides granular project configuration using "projections".
source ~/.config/nvim/rcplugins/projectionist.vim
" Ack - Integrata ack (grep replacement) into vim
source ~/.config/nvim/rcplugins/ack.vim
" Fuzzy everything...
source ~/.config/nvim/rcplugins/fzf.vim
" Tmux statusline generator
source ~/.config/nvim/rcplugins/tmuxline.vim

" TODO TextObj - Custom text objects for the line, indent level, entier file, etc
" source ~/.config/nvim/rcplugins/text-objects.vim
" TODO many leader keys: 
" source ~/.config/nvim/rcplugins/tmux-runner.vim

" Initialize plugin system. Plugins become visible to vim.
call plug#end()

" Automatically install missing plugins on startup {{{1
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | source $MYVIMRC 
  \| endif

" vim:ft=vim
