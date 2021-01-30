# alias v='nvim'
# # alias p='pandoc'
# alias m='mpv'
# alias r='ranger'
# alias trc='transmission-remote-cli'
# # alias t='tremc'
# alias trs='transmission-rss'
# alias xup='xrdb .Xresources'
# alias pman='sudo pacman'
# alias pip='sudo pip'
# alias jp='joplin'
# alias nb='newsboat'
# command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

alias \
	mkd="mkdir -pv" \
	tree="tree -a" \
	ccat="highlight --out-format=ansi"

alias \
	sdn="sudo shutdown -h now" \
	srn="sudo reboot now"

alias \
	f="$FILE" \
	e="$EDITOR" \
	v="$EDITOR"

# arch
alias \
	p="sudo pacman"

# tmux
alias \
	t="tat"

# make st
alias \
    mkst="sudo touch config.h && sudo rm config.h && sudo make clean install" \
    mkstt="sudo make clean install" 
 
# shortcuts
alias \
	ref="shortcuts >/dev/null; source ~/.config/shortcutrc"

# other #######################################################################
alias \
    ka="killall" \
    stop="kill -TSTP" \
	batt="cat /sys/class/power_supply/BAT?/capacity"
    
# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
# alias trp='trash-put'
# alias tre='trash-empty'
# alias trl='trash-list'
# alias trr='trash-restore'
# alias trm='trash-rm'
