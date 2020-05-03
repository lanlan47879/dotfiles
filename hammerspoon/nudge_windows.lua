hs.window.animationDuration = 0.0
-- from https://github.com/weinberz/dotfiles/blob/master/.hammerspoon/init.lua
function nudge(x, y)
    local win = hs.window.focusedWindow()
    if win == nil then
		return
	end
	local f = win:frame()
	f.x = f.x + x
	f.y = f.y + y
	win:setFrame(f)
end

local pos = 50
hs.hotkey.bind(mashmove, 'l', function() nudge(-pos, 0) end, nil, function() nudge(-pos, 0) end) -- nude left (repeats as long as key is held down)
hs.hotkey.bind(mashmove, ';', function() nudge(pos, 0) end, nil, function() nudge(pos, 0) end) -- nudge right (repeats as long as key is held down)
hs.hotkey.bind(mashmove, '/', function() nudge(0, -pos) end, nil, function() nudge(0, -pos) end) -- nudge up (repeats as long as key is held down)
hs.hotkey.bind(mashmove, '.', function() nudge(0, pos) end, nil, function() nudge(0, pos) end) -- nudge down (repeats as long as key is held down)