# overwrite commands

# alias vim='vim -u "$XDG_CONFIG_HOME/vim/vimrc"'

# ls
# ls="ls -hN --color=auto --group-directories-first" \
# l='lsd -hA --group-dirs first'
alias \
    ls='exa --icons -a --group-directories-first' \
	l="ls -alF" \
	la="ls -A"

# cp etc
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -v" \
	grep="grep --color=auto" \
	egrep="egrep --color=auto" \
	fgrep="fgrep --color=auto" \
	diff="diff --color=auto" \
    dirs="dirs -v"

# tmux
alias \
    tmux="tmux -f ${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf"
 
# Command aliases, suffix aliases, global aliases
# alias -s {yml,yaml}=vim
alias -g G='| grep -i'
alias -g M='| more'
