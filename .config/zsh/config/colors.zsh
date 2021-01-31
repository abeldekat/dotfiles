# Color settings

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

# TODO LS_COLORS is empty
# eval "$(dircolors -b)"

# # Colourized less output
# cless() {
#   case "$1" in
#       *.md) glow -s dark "$1" | less -r;;
#       *) highlight -O ansi "$1" --force | less -r;;
#   esac
# }

# # Colourized cat output
# ccat() {
#   case "$1" in
#       *.md) glow -s dark "$1";;
#       *) highlight -O ansi "$1" --force;;
#   esac
# }
