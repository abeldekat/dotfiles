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
if ! zgen saved; then
	zgen oh-my-zsh
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/vi-mode

	zgen load zsh-users/zsh-completions src

	zgen load /usr/share/fzf/key-bindings.zsh
	zgen load /usr/share/fzf/completion.zsh
	#zgen load denysdovhan/spaceship-prompt spaceship
        zgen load mafredri/zsh-async
        zgen load sindresorhus/pure
	zgen load zsh-users/zsh-syntax-highlighting 
	
	zgen save
fi
