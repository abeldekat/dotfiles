## Command history configuration
HISTSIZE=10000
SAVEHIST=10000
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTFILE=$HOME/.zsh_history

# Looking at OMZ:histchars !^#

# TODO Show history
# case $HIST_STAMPS in
#   "mm/dd/yyyy") alias history='fc -fl 1' ;;
#   "dd.mm.yyyy") alias history='fc -El 1' ;;
#   "yyyy-mm-dd") alias history='fc -il 1' ;;
#   *) alias history='fc -l 1' ;;
# esac
alias history='fc -l 1'

# OMZ
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# CToomey
setopt append_history       # multiple parallel zsh sessions
setopt extended_history     # Save each command's beginning timestamp
setopt inc_append_history   # new history lines are added to the $HISTFILE incrementally as they are entered
