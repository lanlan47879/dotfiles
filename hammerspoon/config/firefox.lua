-- from https://github.com/Hammerspoon/hammerspoon/issues/664#issuecomment-202829038
moveToTabLeft = hs.hotkey.new(mashnav, "y", function() 
        hs.eventtap.keyStroke({"alt", "cmd"}, "left")
        end)
moveToTabRight = hs.hotkey.new(mashnav, "o", function() 
        hs.eventtap.keyStroke({"alt", "cmd"}, "right")
        end)

hs.window.filter.new('Firefox')
  :subscribe(hs.window.filter.windowFocused,function() moveToTabLeft:enable() end)
  :subscribe(hs.window.filter.windowFocused,function() moveToTabRight:enable() end)
  :subscribe(hs.window.filter.windowUnfocused,function() moveToTabLeft:disable() end)
  :subscribe(hs.window.filter.windowUnfocused,function() moveToTabRight:disable() end)