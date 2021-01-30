# General ZSH configurations
setopt autocd

# zsh correction. If used add some aliases like:
# alias sudo='nocorrect sudo'
# setopt correct_all

sz() { source ~/.config/zsh/.zshrc }

first() { awk '{print $1}' }
second() { awk '{print $2}' }
# sum() { paste -sd+ - | bc }
