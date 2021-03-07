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
# do not override bc the calculator
alias bco='bspc config'
alias bno='bspc node'
alias bde='bspc desktop'

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

# bsp-layout, appending desktop name is possible
alias bla='bsp-layout get $(bspc query -D -d --names)'

# receptacles
alias bqr='bspc query --nodes -n .leaf.\!window'
alias bqrl='bspc query --nodes -n .leaf.\!window.local'
# hidden
alias bqh='bspc query --nodes -n .hidden.local'
alias bqhl='bspc query --nodes -n .hidden'
# marked
alias bqm='bspc query --nodes -n .marked'
alias bqml='bspc query --nodes -n .marked.local'
# locked
alias bql='bspc query --nodes -n .locked'
alias bqll='bspc query --nodes -n .locked.local'
# private
alias bqp='bspc query --nodes -n .private'
alias bqpl='bspc query --nodes -n .private.local'
# sticky
alias bqs='bspc query --nodes -n .sticky'
alias bqsl='bspc query --nodes -n .sticky.local'

# Unhide all hidden nodes in the current desktop
alias bhul='bspc query -N -n .hidden.local | xargs -I {} bspc node {} -g hidden=off'

# Which desktops are controlled by bspwm-dynamic
alias bdy='ls -1 /tmp/bsp-masterstack.state/desktops && \
    cat /tmp/bsp-masterstack.state/GUARD && \
    bspc config automatic_scheme && \
    bspc config split_ratio && \
    bspc config initial_polarity'

# bspc node action
# pipe the results of a previous bspq query into xargs
alias -g BNA='| xargs -I {} bspc node {}'
# pipe the resuts to bspc query tree
alias -g BQNT='| xargs -I {} bspc query --tree -n {}'
