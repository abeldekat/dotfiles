" Vimrc
"
" This file contains the minimal settings to set the foundation, with the
" majority of the configuration and settings living in files spread between
" vim/rcfiles and vim/rcplugins
"
" All files in the rcplugin directory will interact with minpac through function AddPluginToManager 

" Mapleader is space
let mapleader = "\<Space>"

set termguicolors
syntax on

" Only load minpac when one of these commands is issued:
command! Pupdate packadd minpac | source $MYVIMRC | call minpac#update()
command! Pclean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! Pstatus packadd minpac | call minpac#status()
if exists('*minpac#init')
	call minpac#init()
	" Pass each config to minpac#add
	function! AddPluginToManager(...) abort
		call call(function("minpac#add"), a:000)
	endfunction
else
	" No minpac required, provide a stub
	function! AddPluginToManager(...) abort
	endfunction
endif

function! CurrentLinuxThemeIsLight()
	let l:name = readfile(expand('~/.local/share/colors/active-theme.name'))[0]
	if match(l:name, 'light') != -1 
		return v:true
	else
		return v:false
	endif
endfunction

" Source all files in the specified directory
function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.config/nvim/' . a:directory . '/*.vim'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction 

" Source the plugins and their settings
call s:SourceConfigFilesIn('rcplugins')
" Source personal settings
call s:SourceConfigFilesIn('rcfiles')
