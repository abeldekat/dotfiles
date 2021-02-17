# bspwm [-h|-v|-c CONFIG_PATH]
#
# bspc DOMAIN [SELECTOR] COMMANDS
#
# bspc COMMAND [OPTIONS] [ARGUMENTS]
#
# 827 lines,  the manual overview is:
# common definitions
# #### DIR         := north | west | south | east
# #### CYCLE_DIR   := next | prev
# selectors: 
# #### node(descriptors,path jumps,modifiers), 
# #### desktop(descriptors, modifiers), 
# #### monitor(descriptors, modifiers)
# window states
# node flags
# stacking layers
# receptacles
# domains: node, desktop, monitor, query, wm, rule, config, subscribe, quit
# exitcodes
# settings:
# pointer bindings
# events
# report format
# environment variables
#
# bspc query: 

# already assigned bd and bf
alias b='bspc'
alias bc='bspc config'
# alias bd='bspc desktop'
alias bn='bspc node'

# bspc query, on three domains
# list, like --nodes
# constrain the list, like --node
# extra --tree and --names. Nodes have no name
# This needs a command:
alias bq='bspc query'
# query nodes command
alias bqn='bspc query --nodes'
# query nodes in focused desktop
alias bqnd='bspc query --nodes -d'
# query focussed node
alias bqnn='bspc query --nodes -n'

# receptacles
alias bqr='bspc query --nodes -n .leaf.\!window'
alias bqrl='bspc query --nodes -n .leaf.\!window.local'
# hidden
alias bqh='bspc query --nodes -n .hidden.local'
alias bqhl='bspc query --nodes -n .hidden'

# sxhkd testing
# process
alias psxhkd='ps -x | grep sxhkd'
# kill
alias ksxhkd='killall -e sxhkd'
# start, test warnings in terminal
alias rsxhkd='sxhkd -c ~/.config/sxhkd/sxhkdrc{,_common}'
