mashfocus  = {"alt", "cmd"}
require("focus_windows")

mashmove = {"ctrl", "alt"}
require("move_windows")
require("nudge_windows")
require("resize_windows")

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "r", function()
    hs.reload()
  end)
hs.alert.show("Config loaded") 