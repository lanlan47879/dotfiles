hs.window.animationDuration = 0.0
-- from https://github.com/weinberz/dotfiles/blob/master/.hammerspoon/init.lua
function resize(x,y)
    local win = hs.window.focusedWindow()
    	if win == nil then
		return
	end
	local f = win:frame()

	f.w = f.w + x
	f.h = f.h + y
	win:setFrame(f)
end

local size = 50
hs.hotkey.bind(mashmove, '[', function() resize(-size, 0) end, nil, function() resize(-size, 0) end) -- decrease width (repeats as long as key is held down)
hs.hotkey.bind(mashmove, ']', function() resize(size, 0) end, nil, function() resize(size, 0) end) -- increase width (repeats as long as key is held down)
hs.hotkey.bind(mashmove, '=', function() resize(0, size) end, nil, function() resize(0, size) end) -- increase height (repeats as long as key is held down)
hs.hotkey.bind(mashmove, '-', function() resize(0, -size) end, nil, function() resize(0, -size) end) -- increase height (repeats as long as key is held down)