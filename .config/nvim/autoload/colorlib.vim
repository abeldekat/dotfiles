function! colorlib#currentLinuxThemeIsLight()
	let l:name = colorlib#nameOfCurrentLinuxTheme()
	if match(l:name, 'light') != -1 
		return v:true
	else
		return v:false
	endif
endfunction

function! colorlib#nameOfCurrentLinuxTheme()
	return readfile(expand('~/.local/share/colors/active-theme.name'))[0]
endfunction


" vim:ft=vim
