# mafredri/zsh-async
# sindresorhus/pure

# PROMPT
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
# SPACESHIP_PROMPT_ADD_NEWLINE="${SPACESHIP_PROMPT_ADD_NEWLINE=true}"
# SPACESHIP_PROMPT_SEPARATE_LINE="${SPACESHIP_PROMPT_SEPARATE_LINE=true}"
# SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="${SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=false}"
# SPACESHIP_PROMPT_PREFIXES_SHOW="${SPACESHIP_PROMPT_PREFIXES_SHOW=true}"
# SPACESHIP_PROMPT_SUFFIXES_SHOW="${SPACESHIP_PROMPT_SUFFIXES_SHOW=true}"
# SPACESHIP_PROMPT_DEFAULT_PREFIX="${SPACESHIP_PROMPT_DEFAULT_PREFIX="via "}"
# SPACESHIP_PROMPT_DEFAULT_SUFFIX="${SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "}"
# CHAR
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
# SPACESHIP_CHAR_PREFIX="${SPACESHIP_CHAR_PREFIX=""}"
# SPACESHIP_CHAR_SUFFIX="${SPACESHIP_CHAR_SUFFIX=""}"
# SPACESHIP_CHAR_SYMBOL="${SPACESHIP_CHAR_SYMBOL="➜ "}"
# SPACESHIP_CHAR_SYMBOL_ROOT="${SPACESHIP_CHAR_SYMBOL_ROOT="$SPACESHIP_CHAR_SYMBOL"}"
# SPACESHIP_CHAR_SYMBOL_SECONDARY="${SPACESHIP_CHAR_SYMBOL_SECONDARY="$SPACESHIP_CHAR_SYMBOL"}"
# SPACESHIP_CHAR_COLOR_SUCCESS="${SPACESHIP_CHAR_COLOR_SUCCESS="green"}"
# SPACESHIP_CHAR_COLOR_FAILURE="${SPACESHIP_CHAR_COLOR_FAILURE="red"}"
# SPACESHIP_CHAR_COLOR_SECONDARY="${SPACESHIP_CHAR_COLOR_SECONDARY="yellow"}"
# TIME
# SPACESHIP_TIME_SHOW="${SPACESHIP_TIME_SHOW=false}"
# SPACESHIP_TIME_PREFIX="${SPACESHIP_TIME_PREFIX="at "}"
# SPACESHIP_TIME_SUFFIX="${SPACESHIP_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
# SPACESHIP_TIME_FORMAT="${SPACESHIP_TIME_FORMAT=false}"
# SPACESHIP_TIME_12HR="${SPACESHIP_TIME_12HR=false}"
# USER --------------------------------------------------------------------------
# | SPACESHIP_USER_SHOW | show username on local | show username on remote |
# |---------------------+------------------------+-------------------------|
# | false               | never                  | never                   |
# | always              | always                 | always                  |
# | true                | if needed              | always                  |
# | needed              | if needed              | if needed               |
# --------------------------------------------------------------------------
# SPACESHIP_USER_SHOW="${SPACESHIP_USER_SHOW=true}"
# SPACESHIP_USER_PREFIX="${SPACESHIP_USER_PREFIX="with "}"
# SPACESHIP_USER_SUFFIX="${SPACESHIP_USER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
# SPACESHIP_USER_COLOR="${SPACESHIP_USER_COLOR="yellow"}"
# SPACESHIP_USER_COLOR_ROOT="${SPACESHIP_USER_COLOR_ROOT="red"}"
# HOST
# SPACESHIP_HOST_SHOW="${SPACESHIP_HOST_SHOW=true}"
# SPACESHIP_HOST_SHOW_FULL="${SPACESHIP_HOST_SHOW_FULL=false}"
# SPACESHIP_HOST_PREFIX="${SPACESHIP_HOST_PREFIX="at "}"
# SPACESHIP_HOST_SUFFIX="${SPACESHIP_HOST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
# SPACESHIP_HOST_COLOR="${SPACESHIP_HOST_COLOR="blue"}"
# SPACESHIP_HOST_COLOR_SSH="${SPACESHIP_HOST_COLOR_SSH="green"}"
# DIR
# SPACESHIP_DIR_SHOW="${SPACESHIP_DIR_SHOW=true}"
# SPACESHIP_DIR_PREFIX="${SPACESHIP_DIR_PREFIX="in "}"
# SPACESHIP_DIR_SUFFIX="${SPACESHIP_DIR_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
# SPACESHIP_DIR_TRUNC="${SPACESHIP_DIR_TRUNC=3}"
SPACESHIP_DIR_TRUNC="${SPACESHIP_DIR_TRUNC=0}"
# SPACESHIP_DIR_TRUNC_PREFIX="${SPACESHIP_DIR_TRUNC_PREFIX=}"
SPACESHIP_DIR_TRUNC_PREFIX=".../"
# SPACESHIP_DIR_TRUNC_REPO="${SPACESHIP_DIR_TRUNC_REPO=true}"
# SPACESHIP_DIR_COLOR="${SPACESHIP_DIR_COLOR="cyan"}"
# SPACESHIP_DIR_LOCK_SYMBOL="${SPACESHIP_DIR_LOCK_SYMBOL=" "}"
# SPACESHIP_DIR_LOCK_COLOR="${SPACESHIP_DIR_LOCK_COLOR="red"}"
# GIT
# many options, see /usr/lib/spaceship-prompt/sections/git.zsh
# BAT
# VI-MODE
# SPACESHIP_VI_MODE_SHOW="${SPACESHIP_VI_MODE_SHOW=true}"
# SPACESHIP_VI_MODE_PREFIX="${SPACESHIP_VI_MODE_PREFIX=""}"
# SPACESHIP_VI_MODE_SUFFIX="${SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
# SPACESHIP_VI_MODE_INSERT="${SPACESHIP_VI_MODE_INSERT="[I]"}"
#### SPACESHIP_VI_MODE_INSERT=""
# SPACESHIP_VI_MODE_NORMAL="${SPACESHIP_VI_MODE_NORMAL="[N]"}"
#### SPACESHIP_VI_MODE_NORMAL="N"
# SPACESHIP_VI_MODE_COLOR="${SPACESHIP_VI_MODE_COLOR="white"}"
# EXIT CODE
# SPACESHIP_EXIT_CODE_SHOW="${SPACESHIP_EXIT_CODE_SHOW=false}"
SPACESHIP_EXIT_CODE_SHOW=true
# SPACESHIP_EXIT_CODE_PREFIX="${SPACESHIP_EXIT_CODE_PREFIX=""}"
# SPACESHIP_EXIT_CODE_SUFFIX="${SPACESHIP_EXIT_CODE_SUFFIX=" "}"
# SPACESHIP_EXIT_CODE_SYMBOL="${SPACESHIP_EXIT_CODE_SYMBOL="✘"}"
# SPACESHIP_EXIT_CODE_COLOR="${SPACESHIP_EXIT_CODE_COLOR="red"}"

SPACESHIP_PROMPT_ORDER=(
    # time          # Time stamps section
    user          # Username section
    dir           # Current directory section
    # host          # Hostname section
    git           # Git section (git_branch + git_status)
    exec_time     # Execution time
    # line_sep      # Line break
    # battery       # Battery level and status
    # vi_mode       # Vi-mode indicator
    # exit_code     # Exit code section
    char          # Prompt character
  )
SPACESHIP_RPROMPT_ORDER=(
    # empty by default
  )

# TODO
# eval "$(lua ~/scripts/z.lua --init zsh enhanced)"

# Spaceship Prompt
autoload -U promptinit; promptinit
prompt spaceship
# Normal mode does not show. This is the fix:
# eval spaceship_vi_mode_enable

# TODO 
# Manage your Environment Variable collections. 
# Switch between Environment Variable sets quickly and easily, or run a single command with a pre-defined set of Environment Variables.
# https://github.com/bitrise-io/envman
# Generated for envman. Do not edit.
# [ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
