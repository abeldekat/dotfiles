# Do not forget: dg config --local status.showUntrackedFiles no
DOTFILES=$HOME/.dotfiles.git/

# No file completion on dg add. Git add completion works
alias dg='/usr/bin/git --git-dir=$DOTFILES --work-tree=$HOME' 
# This is a function. Thus dtf add will autocomplete all files. Git add completion does not work.
dtf () {
      git --git-dir="$DOTFILES" --work-tree="$HOME" "$@"
}

# Git status
alias dgs='dg status'
# Git commit
alias dgc='dg commit'
# Add selected new file
dga (){
    result=$(fzf)
    dg add $result
}
# Update selected modifiedfile, stage
dgu (){
    result=$(dtf status --short | sed -e 's/^...//' | fzf)
    [[ -f $result ]] && dg add $result
}
# Diff selected modified file
dgd (){
    result=$(dtf status --short | sed -e 's/^...//' | fzf)
    [[ -f $result ]] && dg diff $result
}
# Easily use tig with the dotfiles. No untracked files for performance
dt () {
    TIGRC_USER=$XDG_CONFIG_HOME/tig/dotfilesconfig GIT_DIR=$DOTFILES GIT_WORK_TREE=$HOME tig status
}
# Untested
dtfnew () {
  git clone --bare $1 $DOTFILES
  dtf config --local status.showUntrackedFiles no
  # dtf switch -c base

  echo "Please add and commit additional files"
  echo "using 'dtf add' and 'dtf commit', then run"
  echo "dtf push -u origin base"
}
# Untested
dtfrestore () {
  git clone -b base --bare $1 $DOTFILES
  dtf config --local status.showUntrackedFiles no
  dtf checkout || echo -e 'Deal with conflicting files, then run (possibly with -f flag if you are OK with overwriting)\ndtf checkout'
}
