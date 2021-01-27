fpath=(~/.config/zsh/completion $fpath)

# OMZ order
# 1 autoload compinit
# 2 Add all defined plugins to fpath. This must be done before running compinit.
# 3 Delete the zcompdump file if OMZ zcompdump metadata changed
# 4 Compfix and compinit
# 5 Source /lib/*.zsh. Directories.zsh and cli.zsh do contain compdef invocations
# 6 Source plugins. Not the _(name) plugins. Load theme
# My approach: Run compinit as if it where inside the framework. So, before sourcing plugins.
# Thus, any compdef invocation will work. If the plugin has a _(name) completion file this needs to be 
# added to the fpath manually before compinit. Ripgrep on compinit and compdef

# Insecure directories, run compaudit for list.
# -U means no alias expansion
autoload -U compinit

# Load from all found directories. Avoid security tests.
# The check performed to see if there are new functions can be omitted by giving  the  op‐ tion  -C.   In  this  case the dump file will only be created if there isn't one al‐ ready.
compinit -u -C -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

# Easily reset completion
alias rmdump="rm $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

zstyle ':completion:*' menu select
# case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Include hidden files in autocomplete:
_comp_options+=(globdots)		# Include hidden files.
