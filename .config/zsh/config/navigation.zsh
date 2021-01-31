# Navigate more easily without cd
setopt auto_cd

# OMZ directories.zsh copy paste
# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
# Exchanges the meanings  of `+' and `-' when used with a number to specify a directory in the stack.
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d

# List directory contents
# alias lsa='ls -lah'
# alias l='ls -lah'
# alias ll='ls -lh'
# alias la='ls -lAh'

# cdpath=(
#   $HOME/code \
#   $HOME/code/work/current \
#   $HOME
# )
# _cdpath_directories() {
#   modified_in_last_days=${1:-999}
#   echo "${CDPATH//:/\n}" | while read dir; do
#     find -L "$dir" \
#       -not -path '*/\.*' \
#       -type d \
#       -atime -"$modified_in_last_days" \
#       -maxdepth 1
#   done
# }

# _is_a_git_repo() {
#   while read dir; do
#     if [[ -d "$dir/.git" ]]; then
#       basename "$dir"
#     fi
#   done
# }

# tm-select-session() {
#   project=$(projects | fzf --reverse)
#   if [ ! -z "$project" ]; then
#     (cd "$project" && tat)
#   fi
# }

# projects() {
#   _cdpath_directories $1 | _is_a_git_repo
# }

# itree() {
#   if [ -f .gitignore ]; then
#     tree -I "$(cat .gitignore | paste -s -d'|' -)" -C | less -R
#   else
#     tree -I node_modules -C
#   fi
# }
