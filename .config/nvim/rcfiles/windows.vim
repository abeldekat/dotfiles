" tmux_navigator.vim reminder
" if !get(g:, 'tmux_navigator_no_mappings', 0)
"   nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
"   nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
"   nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
"   nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"   nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
" endif

" Windows navigation and splits, will be overwritten by tmux_navigator.vim
" plugin. Plugins are loaded after vimrc, see help startup
" Also: on source vimrc the mappings below will apply thus overwriting the 
" functions tmux-navigator calls. So, only nnoremap if there is no
" tmux_navigator
if !exists("g:loaded_tmux_navigator")
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l
    nnoremap <C-\> <C-w>p
endif
" Easier split, c-s is available
nnoremap <C-s> <C-w>s
" Easier split, c-v is not available, this activates visual block mode
" Choice: block mode is also available from visual mode by pressing ctr-v. 
" Quick splits are now more valuable than blockmode when there is a workaround
" Alternative: leader s and v
nnoremap <C-v> <C-w>v

" Reminders
"
" New window empty file
" ctrl + w n
" Split current window in two.  Edit file name under cursor.
" ctrl-w f
"Max out the height of the current split
" ctrl + w _
"Max out the width of the current split
" ctrl + w |
"Normalize all split sizes, which is very handy when resizing terminal
" ctrl + w =
"Rotate
" Ctrl+W R
"Exchange
" Ctrl+W x
"Break out current window into a new tabview
" Ctrl+W T
"Close every window in the current tabview but the current one
" Ctrl+W o
" Does :split #, split window in two and edit alternate file. When a count is given, it becomes :split #N, split window and edit buffer N.
" Ctrl-W ^
" move cursor to top bottom or last accessed window
" Ctrl+W t,b,p 
" move to preview window
" Ctrl+W P

" Open new split panes to right and bottom, which feels more natural than Vim’s default:
" set splitbelow
" set splitright

" Tabs, and the taboo plugin
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt

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
