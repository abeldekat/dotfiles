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
	zgen save
fi
