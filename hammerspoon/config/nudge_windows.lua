local function pushWindow(dir)
    local win = hs.window.focusedWindow()
    if not win then
        return
    end

    if dir == 'left' then
        hs.grid.pushWindowLeft(win)
    elseif dir == 'right' then
        hs.grid.pushWindowRight(win)
    elseif dir == 'down' then
        hs.grid.pushWindowDown(win)
    else
        hs.grid.pushWindowUp(win)
    end
    -- redrawBorder()
end

hs.hotkey.bind(mashman, 'h', function() pushWindow('left') end, nil, function() pushWindow('left') end) 
hs.hotkey.bind(mashman, 'j', function() pushWindow('down') end, nil, function() pushWindow('down') end) 
hs.hotkey.bind(mashman, 'k', function() pushWindow('up') end, nil, function() pushWindow('up') end) 
hs.hotkey.bind(mashman, 'l', function() pushWindow('right') end, nil, function() pushWindow('right') end) 
