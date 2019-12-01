command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

if !exists('*minpac#init')
  finish
endif

call minpac#init({'verbose': 4})
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-scriptease')
call minpac#add('junegunn/fzf.vim')
call minpac#add('vim-airline/vim-airline')
"call minpac#add('tpope/vim-unimpaired')
"call minpac#add('tpope/vim-surround')
"call minpac#add('tpope/vim-commentary')
"call minpac#add('tpope/vim-projectionist')
"call minpac#add('tpope/vim-dispatch')
"call minpac#add('dense-analysis/ale')
"call minpac#add('scrooloose/nerdtree')
"call minpac#add('vim-syntastic/syntastic')
"call minpac#add('kana/vim-textobj-user')
"call minpac#add('kana/vim-textobj-entire')


" General enhancements
" Custom textobjects
" For Vimscript
" Colorschemes
" call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})
" call minpac#add('morhetz/gruvbox', {'type': 'opt'})
