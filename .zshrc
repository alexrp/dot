setopt rmstarsilent
unsetopt share_history

test -r ~/.shellrc && source ~/.shellrc

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd c)"
