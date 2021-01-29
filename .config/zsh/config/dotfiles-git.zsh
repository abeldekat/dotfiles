# dgit alias: No completion with dgit add. 
DOTFILES=$HOME/.dotfiles.git/

alias dg='/usr/bin/git --git-dir=$DOTFILES --work-tree=$HOME' 
# do not forget: dgit config --local status.showUntrackedFiles no

alias dga='dg add'
alias dgst='dg status'
alias dgc='dg commit'

dtf () {
      git --git-dir="$DOTFILES" --work-tree="$HOME" "$@"
}

# Add selected file
dgfa (){
    result=$(dtf status --short | sed -e 's/^...//' | fzf)
    dg add $result
}
# Diff selected file
dgfd (){
    result=$(dtf status --short | sed -e 's/^...//' | fzf)
    dg diff $result
}

dtfnew () {
  git clone --bare $1 $DOTFILES
  dtf config --local status.showUntrackedFiles no
  # dtf switch -c base

  echo "Please add and commit additional files"
  echo "using 'dtf add' and 'dtf commit', then run"
  echo "dtf push -u origin base"
}

dtfrestore () {
  git clone -b base --bare $1 $DOTFILES
  dtf config --local status.showUntrackedFiles no
  dtf checkout || echo -e 'Deal with conflicting files, then run (possibly with -f flag if you are OK with overwriting)\ndtf checkout'
}
