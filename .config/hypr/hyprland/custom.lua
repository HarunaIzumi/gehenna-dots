----------------
---- CUSTOM ----
----------------

local mainMod = "SUPER"

-- Reload waybar with mainMod + ALT + R
hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd("pkill waybar && hprctl dispatch exec waybar"))

-- Go to the previous workspace with ALT + TAB
-- hl.bind("ALT + TAB", hl.dsp.focus("last"))

-- Floating mini terminal with mainMod + T
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("kitty", {float = true, size = {640, 480}, move = {"(monitor_w-window_w-5)", "(monitor_h-window_h-5)"}}))

-- Open Brower keybind
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("helium-browser"))

-- PrintScr Keybinds
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -m window -o ~/Pictures/Screenshots"))
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output -o ~/Pictures/Screenshots"))
hl.bind(mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))

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
