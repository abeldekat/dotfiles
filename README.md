# This repository uses stow for installation. Install using the numbered INSTALL scripts in bin/bin.
Prerequisite:
setxkbmap
xcape
stow
fzf

zsh
arch: zsh-completions
# Software to install manually, not required
tree

# The numbered installation scripts:
0 Prepare directories for a proper stpw
1 Install oh-my-zsh to .config/oh-my-zsh
2 Install additional plugins to .config/oh-my-zsh/custom
3 Test stow
4 Apply stow. Note: In .config/oh-my-zsh/custom additional files are linked on a file basis
5 Add minpac to vim
6 Utility, unstow

