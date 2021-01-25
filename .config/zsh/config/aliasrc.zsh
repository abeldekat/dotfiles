#!/bin/sh

# Use neovim for vim if present.
command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

#https://www.ackama.com/blog/posts/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME' 
# do not forget: dgit config --local status.showUntrackedFiles no

# Verbosity and settings that you pretty much just always are going to want. 
	# bat="cat /sys/class/power_supply/BAT?/capacity" \
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -v" \
	mkd="mkdir -pv" \
	tree="tree -a" \

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	ll="ls -alF" \
	la="ls -A" \
	l="ls -CF" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	stop="kill -TSTP" \
	g="git" \
	sdn="sudo shutdown -h now" \
	srn="sudo reboot now" \
	f="$FILE" \
	e="$EDITOR" \
	v="$EDITOR" \
	p="sudo pacman" \
	t="tat"


# Some other stuff
alias \
	ref="shortcuts >/dev/null; source ~/.config/shortcutrc" \
	tmux="tmux -f ${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf" \
	tmuxt="tmux -f ${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmuxtest.conf"

# make st
alias \
	mkst="sudo touch config.h && sudo rm config.h && sudo make clean install" \
	mkstt="sudo make clean install" 

# arch git alias does not work. Make a link from vim to vi in /usr/bin
# Command aliases
#alias fd="fdfind"
alias dirs="dirs -v"

# ZSH guide pdf copy helper
alias %=' '

#alias | grep -i git | sort -R | head -10

# Command aliases, suffix aliases, global aliases
#alias -s {yml,yaml}=vim
alias -g G='| grep -i'
alias -g M='| more'
