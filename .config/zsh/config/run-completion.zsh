# -U means no alias expansion
# autoload -U compaudit compinit
#
# run and avoid security tests
# compinit -u
# zsh compinit: insecure directories, run compaudit for list.

# With zgen, init, compinit is done lastly
# autoload -Uz compinit && \
#    compinit -C 

# OMZ first autoloads, then adds plugins to fpath etc, and runs the compinit before sourcing the plugins

autoload -U compinit
# OMZ: If the user wants it, load from all found directories
compinit -u -C -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
