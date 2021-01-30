# Inspiriation: Brodie Robertson and Chris Toomey
# neofetch

# Sourcing steps
source ~/.config/zsh/config/general.zsh
source ~/.config/zsh/config/colors.zsh
source ~/.config/zsh/config/history.zsh
source ~/.config/zsh/config/completion.zsh

# Compinit has run
source ~/.config/zsh/config/vimode.zsh
#source ~/.config/zsh/config/todo.zsh
source ~/.config/zsh/config/alias-enhancedshell.zsh
source ~/.config/zsh/config/alias-general.zsh
source ~/.config/zsh/config/alias-git.zsh
source ~/.config/zsh/config/dotfiles-git.zsh

for zsh_source in $HOME/.config/zsh/ct/*.zsh; do
  source $zsh_source
done

# ensure_tmux_is_running

source ~/.config/zsh/config/thirdparty.zsh
source ~/.config/zsh/config/prompt.zsh
