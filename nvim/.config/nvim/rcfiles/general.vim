" General Vim Settings
" --------------------

set nobackup
set nowritebackup
set noswapfile
set history=200
set formatoptions-=t " Don't auto-break long lines (re-enable this for prose)

" Tabs {{{1
" Softtabs, 4 spaces
" set tabstop=4
" set shiftwidth=4
" set shiftround
" set expandtab
" }}}

" Display extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Display relative line numbers, with absolute line number for current line
set number
set numberwidth=4
set relativenumber

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1
" Always use vertical diffs
set diffopt+=vertical
" Don't require saving before closing a buffer
set hidden

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
