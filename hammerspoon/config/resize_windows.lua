local function resizeWindow(desc)
    local win = hs.window.focusedWindow()
    if not win then
        return
    end

    if desc == 'thinner' then
        hs.grid.resizeWindowThinner(win)
    elseif desc == 'wider' then
        hs.grid.resizeWindowWider(win)
    elseif desc == 'taller' then
        hs.grid.resizeWindowTaller(win)
    else
        hs.grid.resizeWindowShorter(win)
    end
    -- redrawBorder()
end

hs.hotkey.bind(mashman, 'y', function() resizeWindow('thinner') end, nil, function() resizeWindow('thinner') end) 
hs.hotkey.bind(mashman, 'o', function() resizeWindow('wider') end, nil, function() resizeWindow('wider') end) 
hs.hotkey.bind(mashman, 'u', function() resizeWindow('taller') end, nil, function() resizeWindow('taller') end) 
hs.hotkey.bind(mashman, 'i', function() resizeWindow('shorter') end, nil, function() resizeWindow('shorter') end) 