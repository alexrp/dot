export ZSH="$HOME/.oh-my-zsh"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(colored-man-pages)

source $ZSH/oh-my-zsh.sh

setopt rmstarsilent
unsetopt share_history

test -r ~/.shellrc && source ~/.shellrc

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd c)"
