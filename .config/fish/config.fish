set -gx PAGER "less"
set -gx LESS "-FKRSX"

set -gx MANPAGER "sh -c 'col -b -x | bat -p -l man'"
set -gx MANROFFOPT "-c"

set -gx MICRO_TRUECOLOR "1"

alias dust "dust -s -H"
alias eza "eza -F --color=auto --color-scale=all --icons=auto --hyperlink -a --group-directories-first --smart-group -M --time-style '+%d %b %H:%M:%S' -o --git"
alias fd "fd -L"
alias hyperfine "hyperfine --shell $SHELL --output pipe"
alias rg "rg --binary --engine auto -L --heading -."

abbr bench hyperfine
abbr cat "bat"
abbr du "dust"
abbr find "fd"
abbr grep "rg"
abbr ls "eza"
abbr ll "eza -l"
abbr ps "procs"

zoxide init fish --cmd cd | source
