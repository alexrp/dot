HISTCONTROL=ignoreboth
HISTSIZE=50000
HISTFILESIZE=10000

shopt -s globstar
shopt -s histappend

test -r ~/.shellrc && source ~/.shellrc

eval "$(starship init bash)"
eval "$(zoxide init bash --cmd c)"
