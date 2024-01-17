test -r ~/.shellrc && source ~/.shellrc

HISTCONTROL=ignoredups
HISTFILESIZE=10000000
HISTSIZE=10000000

shopt -s extglob
shopt -s failglob
shopt -s globstar
shopt -s histappend
shopt -s histverify
shopt -s nocaseglob

eval "$(starship init bash)"
eval "$(zoxide init bash --cmd d)"
