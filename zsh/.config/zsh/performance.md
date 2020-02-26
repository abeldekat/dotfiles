Testing with zgen...

1: No plugins at all, only zgen:
around .06s,    60 ms
with only fzf: around 70ms
with only syntax highlighting: around 110ms
with only zsh completions: same, 60 ms
with only 10k: :around 80ms
with only 9k: :around 160ms
with only omy no theme no plugin: around 240ms!!!
now disable compinit in ohmyzsh source and in lib/directories.zsh: 160ms
so the extra compinit takes around 100 ms of the ohmyzsh startup time
with only omy with theme no plugin: also around 240
now add git to the mix: maybe  280
with colored man pages, same
with vim plugin its is a little slower

add everything using 10k: around 350 ms


