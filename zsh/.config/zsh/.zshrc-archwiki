# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

# Arch wiki
autoload -Uz compinit promptinit
compinit
promptinit
autoload -U colors && colors

# This will set the default prompt to the walters theme
prompt walters

# press tab twice
zstyle ':completion:*' menu select
# sudo completion do not use untrusted autocompletion scripts
zstyle ':completion::complete:*' gain-privileges 1
# Include hidden files in autocomplete:
_comp_options+=(globdots)

# todo terminfo key bindings, arch wiki?

# history
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# LARBS
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"


export KEYTIMEOUT=1

# Zsh completions arch package?
# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
