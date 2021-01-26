# Ranger loads both default and  custom rc
export RANGER_LOAD_DEFAULT_RC=false

# The printer, using cups
export PRINTER_DESTINATION="Samsung_M283x_Series"

# FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden'
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# better syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Suggest aliases for commands
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null

# zsh-completions is installed with arch
# it adds completion files to existing system fpath /usr/share/zsh/site-functions
# no further action is necessary
