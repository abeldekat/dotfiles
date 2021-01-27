#https://www.ackama.com/blog/posts/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME' 
# do not forget: dgit config --local status.showUntrackedFiles no

alias g="git"
alias ga='git add'
alias gaa='git add --all'

alias gb='git branch'
alias gbD='git branch -D'

alias gcam='git commit -a -m'
alias gcmsg='git commit -m'

alias gcf='git config --list'

alias gcb='git checkout -b'
alias gco='git checkout'

alias gd='git diff'
alias gds='git diff --staged'

alias gfg='git ls-files | grep'

alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias gunignore='git update-index --no-assume-unchanged'

alias gl='git pull'

# --graph?
alias glo='git log --oneline --decorate'

alias gp='git push'
alias gpd='git push --dry-run'

alias grhh='git reset --hard'

alias gr='git remote'
alias grs='git remote show'

alias gsh='git show'

alias gst='git status'

alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
