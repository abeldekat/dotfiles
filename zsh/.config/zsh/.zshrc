# Path to your oh-my-zsh installation.
export ZSH="/home/chris/.config/oh-my-zsh"
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_MODE='nerdfont-complete'

# arch startup tty warning:
POWERLEVEL9K_IGNORE_TERM_COLORS=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_COLOR_SCHEME='light'
# Defaults:
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
DEFAULT_USER="chris"
POWERLEVEL9K_ALWAYS_SHOW_USER="true"
POWERLEVEL9K_VI_INSERT_MODE_STRING=''
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# CASE_SENSITIVE="true"
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"

#ZSH_CUSTOM="$HOME/.config/oh-my-zsh/custom"
# plugins=(git vi-mode zsh-autosuggestions zsh-syntax-highlighting)
plugins=(
vi-mode
git
colored-man-pages
zsh-syntax-highlighting
) 

### arch
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

source $ZSH/oh-my-zsh.sh
#
### VI mode extra:
# $ZSH/plugins/vi-mode/vi-mode.plugin.zsh
export KEYTIMEOUT=1
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
### De plugin gebruikt v is e niet beter?
# bindkey -M vicmd 'v' edit-command-line


# FZF
#export FZF_DEFAULT_COMMAND="fdfind --hidden . $HOME"
#export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"
# $DISABLE_FZF_AUTO_COMPLETION $DISABLE_FZF_KEY_BINDINGS
# FZF_CTRL_T_COMMAND, FZF_CTRL_T_OPTS
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# FZF_CTRL_R_COMMAND, FZF_CTRL_R_OPTS # FZF_ALT_C_COMMAND, FZF_ALT_C_OPTS
#export FZF_ALT_C_COMMAND="fdfind --hidden -t d . $HOME"
#FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
