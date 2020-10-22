" Minpac - A minimal package manager for Vim 8 (and Neovim)
"-------------------------------------------------------------------
if exists('*minpac#init')
	call minpac#init()
	" Pass each config to minpac#add
	function! AddPluginToManager(...) abort
		call call(function("minpac#add"), a:000)
	endfunction
endif
call AddPluginToManager('k-takata/minpac', {'type': 'opt'})

" Only load minpac when one of these commands is issued:
command! Pupdate packadd minpac | source $MYVIMRC | call minpac#update()
command! Pclean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! Pstatus packadd minpac | call minpac#status()

" Keep this around, copied from main vimrc
" Source all files in the specified directory
" function! s:SourceConfigFilesIn(directory)
"   let directory_splat = '~/.config/nvim/' . a:directory . '/*.vim'
"   for config_file in split(glob(directory_splat), '\n')
"     if filereadable(config_file)
"       execute 'source' config_file
"     endif
"   endfor
" endfunction 
" Source the plugins and their settings
" call s:SourceConfigFilesIn('rcplugins')
" Source personal settings
" call s:SourceConfigFilesIn('rcfiles')

" vim:ft=vim
