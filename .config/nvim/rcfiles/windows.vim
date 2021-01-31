nnoremap <leader>to :TabooOpen 
nnoremap <leader>tc :tabclose<CR> 
nnoremap <leader>tr :TabooRename 

nnoremap <leader>tib :call Tabswitch('br', '~/inspiration/brodie/dotfiles')<CR> 
nnoremap <leader>tic :call Tabswitch('ctoo', '~/inspiration/christoomey/dotfiles')<CR> 
nnoremap <leader>tio :call Tabswitch('omz', '~/inspiration/ohmyzsh/oh-my-zsh-master')<CR> 
nnoremap <leader>tmv :call Tabswitch('vim', '~/.config/nvim')<CR> 
nnoremap <leader>tmz :call Tabswitch('zsh', '~/.config/zsh')<CR> 

function! Tabswitch(name,dir)
    exe 'TabooOpen '.a:name
    exe 'tcd '.a:dir
endfunction
