#https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
#https://opensource.com/article/18/9/tips-productivity-zsh

ZGEN_DIR="$XDG_CONFIG_HOME/zgen"
if [[ ! -f $ZGEN_DIR/zgen.zsh ]]; then
  if [[ ! -d "$ZGEN_DIR" ]]; then
    mkdir -p "$ZGEN_DIR"
  fi
  pushd $XDG_CONFIG_HOME
  git clone https://github.com/tarjoilija/zgen $ZGEN_DIR
  popd
fi

source $ZGEN_DIR/zgen.zsh

#ZGEN_RESET_ON_CHANGE=($ZDOTDIR/zsh_framework.zsh)
if ! zgen saved; then
	zgen oh-my-zsh
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/colored-man-pages
	#zgen oh-my-zsh plugins/vi-mode
	#zgen oh-my-zsh themes/robbyrussell

	zgen load zsh-users/zsh-completions src

	zgen load /usr/share/fzf/key-bindings.zsh
	zgen load /usr/share/fzf/completion.zsh
	zgen load romkatv/powerlevel10k powerlevel10k
	zgen load zsh-users/zsh-syntax-highlighting 
	
	#zgen load zsh-users/zsh-history-substring-search 
	
	zgen save
fi
