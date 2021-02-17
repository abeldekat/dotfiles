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
# query nodes and constrian by desktop. Defaults to focussed
alias bqnd='bspc query --nodes -d'
# query nodes and constain by node. Defaults to focussed
alias bqnn='bspc query --nodes -n'

# receptacles
alias bqr='bspc query --nodes -n .leaf.\!window'
alias bqrl='bspc query --nodes -n .leaf.\!window.local'
# hidden
alias bqh='bspc query --nodes -n .hidden.local'
alias bqhl='bspc query --nodes -n .hidden'
# marked
alias bqm='bspc query --nodes -n .marked'
alias bqml='bspc query --nodes -n .marked.local'

# bspc node action
# pipe the results of a previous bspq query into xargs
alias -g BNA='| xargs -I {} bspc node {}'
