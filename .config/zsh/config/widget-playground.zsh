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
