set -g -x PAGER "less"
set -g -x LESS "-FKRSX"

set -g -x FZF_DEFAULT_OPTS "--bind home:preview-up --bind end:preview-down --height 90% --layout reverse --border --marker='*'"

set -g -x MANPAGER "sh -c 'col -b -x | bat -p -l man'"
set -g -x MANROFFOPT "-c"

set -g -x EDITOR "micro"

set -g -x MICRO_TRUECOLOR "1"

set -g fish_greeting

set -g tide_left_prompt_items "context" "pwd" "git" "cmd_duration" "newline" "character"
set -g tide_right_prompt_items
set -g tide_cmd_duration_threshold "1000"
set -g tide_context_always_display "true"

set -g fzf_directory_opts "--bind" "ctrl-o:execute($EDITOR {} &> /dev/tty)"
set -g fzf_diff_highlighter "delta"
set -g fzf_preview_dir_cmd "eza --color always"

bind \b backward-kill-word
bind \e\[3\;5~ kill-word

alias dust "dust -s -H"
alias eza "eza -F --color auto --color-scale all --icons auto --hyperlink -a --group-directories-first --smart-group -M --time-style '+%d %b %H:%M:%S' -o --git"
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

zoxide init fish --cmd d | source
