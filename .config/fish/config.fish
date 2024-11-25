set -g -x PAGER "less"
set -g -x LESS "-FKRSX"

set -g -x FZF_DEFAULT_OPTS "--bind home:preview-up --bind end:preview-down --height 90% --layout reverse --border --marker='*'"

set -g -x MANPAGER "sh -c 'col -b -x | bat -p -l man'"
set -g -x MANROFFOPT "-c"

set -g -x EDITOR "micro"

set -g -x MICRO_TRUECOLOR "1"

set -g -x RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/config"

set -g fish_greeting

set -g tide_left_prompt_items "context" "pwd" "git" "cmd_duration" "newline" "character"
set -g tide_right_prompt_items

set -g tide_character_icon "❯"
set -g tide_cmd_duration_icon
set -g tide_cmd_duration_threshold "1000"
set -g tide_context_always_display "true"
set -g tide_git_icon
set -g tide_pwd_icon
set -g tide_pwd_icon_home
set -g tide_pwd_icon_unwritable "✘"

set -g fzf_directory_opts "--bind" "ctrl-o:execute($EDITOR {} &> /dev/tty)"
set -g fzf_diff_highlighter "delta"
set -g fzf_preview_dir_cmd "eza --color always"

bind \b backward-kill-word
bind \e\[3\;5~ kill-word

alias cgdb "cgdb -d gdb-multiarch"
# TODO: https://github.com/eza-community/eza/issues/897
alias eza "eza --all --classify --color auto --color-scale all --git --group-directories-first --hyperlink --mounts --octal-permissions --smart-group --time-style '+%d %b %H:%M:%S'"
alias fd "fd --follow --hidden --no-ignore"
alias hexyl "hexyl --color auto --no-squeezing --panels auto"
alias hyperfine "hyperfine --output pipe --shell \$SHELL"

abbr clip "xclip -rmlastnl -selection clipboard"
abbr gdb "gdb-multiarch"
abbr l "eza"
abbr nano "micro"

zoxide init fish --cmd cd | source
