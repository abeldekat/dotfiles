# CT:

# # Copy the most recent command to the clipboard
# function _pbcopy_last_command(){
#   history | tail -1 | sed 's/ *[0-9]* *//' | pbcopy && \
#     tmux display-message "Previous command coppied to clipboard"
# }
# zle -N pbcopy-last-command _pbcopy_last_command
# bindkey '^x^y' pbcopy-last-command

# # Git branches
# _fuzzy_git_branches() {
#   zle -U "$(
#     git branch --color=always --sort=-committerdate | \
#     grep -v '^* ' | \
#     grep -v '^\s\+master' | \
#     fzf-tmux --reverse --ansi --select-1 | \
#     sed -E 's/^[ \t]*//'
#   )"
# }
# zle -N fuzzy-git-branches _fuzzy_git_branches
# bindkey '^g^b' fuzzy-git-branches

# # Git files
# _fuzzy_git_status_files() {
#   zle -U "$(
#     git -c color.status=always status --short | \
#     fzf-tmux --ansi --reverse --no-sort | \
#     cut -d ' ' -f 3
#   )"
# }
# zle -N fuzzy-git-status-files _fuzzy_git_status_files
# bindkey '^g^f' fuzzy-git-status-files

# # Git files
# _fuzzy_git_shalector() {
#   commit=$(
#     git log --color=always --oneline --decorate --all -35 | \
#     fzf-tmux --ansi --reverse --no-sort
#   )
#   zle -U "$(echo $commit | cut -d ' ' -f 1)"
#   zle -M "$commit"
# }
# zle -N fuzzy-git-shalector _fuzzy_git_shalector
# bindkey '^g^g' fuzzy-git-shalector

# END CT ---- #

# function _git-status {
#     zle kill-whole-line
#     zle -U "git status"
#     zle accept-line
# }
# zle -N _git-status
# bindkey -M emacs '\eg' _git-status

# function accept-line-with-echo {
#     # echo "executing $BUFFER"
#     zle .accept-line
# }
# zle -N accept-line accept-line-with-echo
