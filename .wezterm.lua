local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.animation_fps = 120
config.check_for_updates = false
config.color_scheme = "Seti"
config.command_palette_font_size = 12
config.default_cursor_style = "BlinkingBar"
config.enable_kitty_keyboard = true
config.enable_scroll_bar = true
config.font = wezterm.font "Cascadia Code NF"
config.font_size = 11
config.harfbuzz_features = {
    'calt=0',
    'clig=0',
    'liga=0',
}
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 130
config.initial_rows = 40
config.min_scroll_bar_height = "1cell"
config.max_fps = 120
config.mouse_bindings = {
    {
        event = {
            Down = {
                button = "Right",
                streak = 1,
            },
        },
        mods = "NONE",
        action = wezterm.action_callback(function(window, pane)
            if window:get_selection_text_for_pane(pane) ~= "" then
                window:perform_action(wezterm.action.CopyTo "ClipboardAndPrimarySelection", pane)
                window:perform_action(wezterm.action.ClearSelection, pane)
            else
                window:perform_action(wezterm.action.PasteFrom "Clipboard", pane)
            end
        end),
    },
}
config.scrollback_lines = 1000000
config.term = "wezterm"
config.text_background_opacity = 0.9
config.unicode_version = 14
config.webgpu_power_preference = "HighPerformance"
config.window_background_opacity = 0.9
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

return config
