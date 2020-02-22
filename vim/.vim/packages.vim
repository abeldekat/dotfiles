
if !filereadable(expand('~/.vim/pack/minpac/opt/minpac/README.md'))
    silent !git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac
    autocmd VimEnter * PackUpdate
endif

command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

" packadd is in the command.
if !exists('*minpac#init')
  finish
endif

call minpac#init({'verbose': 3})
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('kana/vim-textobj-user')
call minpac#add('kana/vim-textobj-entire')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('junegunn/fzf.vim')
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-scriptease')

call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
"call minpac#add('itchyny/lightline.vim')
call minpac#add('dylanaraps/wal.vim')
call minpac#add('morhetz/gruvbox', {'type': 'opt'})
call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})

command! PackUpdate source $MYVIMRC | call minpac#update()
command! PackClean  source $MYVIMRC | call minpac#clean()
command! PackStatus source $MYVIMRC | call minpac#status()

"call minpac#add('ap/vim-css-color')
"call minpac#add('tpope/vim-commentary')
"call minpac#add('tpope/vim-projectionist')
"call minpac#add('tpope/vim-dispatch')
"call minpac#add('dense-analysis/ale')
"call minpac#add('scrooloose/nerdtree')
"call minpac#add('vim-syntastic/syntastic')
"
