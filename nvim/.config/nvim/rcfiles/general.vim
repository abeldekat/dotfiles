" General Vim Settings
" --------------------

" General {{{1
if exists("g:my_colorscheme_plugin")
	exe "colors" g:my_colorscheme_plugin
endif
set noswapfile
set nobackup
set nowritebackup
set undofile
set formatoptions-=t " Don't auto-break long lines (re-enable this for prose)
set ignorecase smartcase
set scrolloff=8
set path+=**
set hidden
" }}}

" Tabs {{{1
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" set shiftround
set smartindent
" }}}

" Space {{{1
" Display extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·
" Use one space, not two, after punctuation.
set nojoinspaces
"}}}

" Line numbers {{{1
" Display relative line numbers, with absolute line number for current line
set number relativenumber numberwidth=4
" }}}

" Diffs {{{1
" Always use vertical diffs
set diffopt+=vertical
"}}}

" TODO {{{1
" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
" let g:is_posix = 1
" }}}

" Spell {{{1
" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
" set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
" set complete+=kspell
" }}}1

" Neovim defaults: {{{1
" filetype plugin indent on
" set backspace=2      " Backspace deletes like most programs in insert mode
" set ruler            " show the cursor position all the time
" set showcmd          " display incomplete commands
" set incsearch        " do incremental searching
" set laststatus=2     " Always display the status line
" }}}

" vim:ft=vim
