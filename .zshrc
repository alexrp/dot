autoload -U -z compinit bashcompinit && compinit && bashcompinit

test -r ~/.shellrc && source ~/.shellrc

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
SAVEHIST=10000000
HISTSIZE=10000000

setopt combiningchars
setopt extendedglob
setopt extendedhistory
setopt globstarshort
setopt hashexecutablesonly
setopt histfcntllock
setopt histfindnodups
setopt histignorealldups
setopt histsavenodups
setopt histreduceblanks
setopt histverify
setopt incappendhistory
setopt interactivecomments
setopt longlistjobs
setopt nocaseglob
setopt numericglobsort
setopt rmstarsilent

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd d)"
