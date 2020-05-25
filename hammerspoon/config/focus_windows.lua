local function focusWindow(dir) 
    if dir == 'north' then
        hs.window.focusWindowNorth()
    elseif dir == 'east' then
        hs.window.focusWindowEast()
    elseif dir == 'south' then
        hs.window.focusWindowSouth()
    else 
        hs.window.focusWindowWest()
    end

    local win = hs.window.focusedWindow()
    if not win then
        return
    end

    local frame = win:frame()
    local point = {x = frame.x + frame.w / 2, y = frame.y + frame.h / 2}
    hs.mouse.setAbsolutePosition(point)
end

hs.hotkey.bind(mashfocus, "k", function() focusWindow('north') end)
hs.hotkey.bind(mashfocus, "l", function() focusWindow('east') end)
hs.hotkey.bind(mashfocus, "j", function() focusWindow('south') end)
hs.hotkey.bind(mashfocus, "h", function() focusWindow('west') end)