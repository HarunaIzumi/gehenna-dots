---------------
---- INPUT ----
---------------

hl.config({
  input = {
    kb_layout = "latam",
    kb_variant = "",
    kb_model = "",
    kb_options = "",
    kb_rules = "",
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = {
      natural_scroll = true,
    },
  },
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace",
})

---------------------
---- MOUSE THEME ----
---------------------

hl.env("XCURSOR_THEME", "BreezeX-Dark")
hl.env("XCURSOR_SIZE", "32")
hl.env("HYPRCURSOR_THEME", "BreezeX-Dark-Hypr")
hl.env("HYPRCURSOR_SIZE", "32")
