----------------
---- CUSTOM ----
----------------

-- Reload waybar with mainMod + ALT + R
hl.bind("SUPER + ALT + R", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"))

-- Go to the previous workspace with ALT + TAB
hl.bind("ALT + TAB", hl.dsp.focus({workspace = "previous"}))

-- Floating mini terminal with mainMod + T
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty", {float = true, size = {640, 480}, move = {"(monitor_w-window_w-5)", "(monitor_h-window_h-5)"}}))

-- Open Brower keybind
hl.bind("SUPER + B", hl.dsp.exec_cmd("helium-browser"))

-- PrintScr Keybinds
hl.bind("SUPER + PRINT", hl.dsp.exec_cmd("hyprshot -m window -o ~/Pictures/Screenshots"))
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output -o ~/Pictures/Screenshots"))
hl.bind("SUPER + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))

hl.window_rule({
  -- Window Rule for waybar modules
  name = "wbarmini",
  match = {class = "wbarmini"},
  center = true,
  float = true,
  size = {800, 600},  
})

hl.window_rule({
  -- Window rule for Bluetooth Manager screen
    name = "blueman",
    match = {class = "blueman-manager"},
    center = true,
    float = true,
    size = {800, 600},
})
