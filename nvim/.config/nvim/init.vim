" Vimrc
"
" This file contains the minimal settings to set the foundation, with the
" majority of the configuration and settings living in files spread between
" vim/rcfiles and vim/rcplugins

let mapleader = "\<Space>"

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.config/nvim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction 
command! Pupdate source $MYVIMRC | call minpac#update()
command! Pclean  source $MYVIMRC | call minpac#clean()
command! Pstatus source $MYVIMRC | call minpac#status()

packadd minpac
call minpac#init()
call s:SourceConfigFilesIn('rcplugins')
call s:SourceConfigFilesIn('rcfiles')
