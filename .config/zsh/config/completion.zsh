fpath=(~/.config/zsh/completion $fpath)

# Easily reset completion
alias rmdump="rm $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

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

# If you use the menu-select widget, which is part of the zsh/complist module, you should make sure that that module is loaded before the call to compinit so that that widget is also re-defined.
zmodload zsh/complist

# Load from all found directories. Avoid security tests.
# The check performed to see if there are new functions can be omitted by giving  the  op‐ tion  -C.   In  this  case the dump file will only be created if there isn't one al‐ ready.
compinit -u -C -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

zstyle ':completion:*' menu select
# case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors ''
# Include hidden files in autocomplete:
_comp_options+=(globdots)		# Include hidden files.

# automatically load bash completion functions
autoload -U +X bashcompinit && bashcompinit
