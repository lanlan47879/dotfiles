hs.window.animationDuration = 0.0
-- from https://github.com/weinberz/dotfiles/blob/master/.hammerspoon/init.lua
function move(x, y, w, h)
	local win = hs.window.focusedWindow()
	if win == nil then
		return
	end
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w*x)
	f.y = max.y + (max.h*y)
	f.w = max.w*w
	f.h = max.h*h
	win:setFrame(f)
end

-- maximize, center
hs.hotkey.bind(mashmove, 'return', function() move(0.0, 0.0, 1.0, 1.0) end) -- maximize
hs.hotkey.bind(mashmove, 'c', function() move(0.25, 0.25, 0.5, 0.5) end) -- center

-- move left, right, up, down
hs.hotkey.bind(mashmove, 'left', function() move(0.0, 0.0, 0.5, 1.0) end) -- move left
hs.hotkey.bind(mashmove, 'right', function() move(0.5, 0.0, 0.5, 1.0) end) -- move right
hs.hotkey.bind(mashmove, 'up', function() move(0.0, 0.0, 1.0, 0.5) end) -- move up
hs.hotkey.bind(mashmove, 'down', function() move(0.0, 0.5, 1.0, 0.5) end) -- move down

-- move top left, top right, bottom left, bottom right
hs.hotkey.bind(mashmove, 'u', function() move(0.0, 0.0, 0.5, 0.5) end) -- move top left
hs.hotkey.bind(mashmove, 'i', function() move(0.5, 0.0, 0.5, 0.5) end) -- move top right
hs.hotkey.bind(mashmove, 'j', function() move(0.0, 0.5, 0.5, 0.5) end) -- move bottom left
hs.hotkey.bind(mashmove, 'k', function() move(0.5, 0.5, 0.5, 0.5) end) -- move bottom right
-- move left middle, right middle 
hs.hotkey.bind(mashmove, 'm', function() move(0, 0.25, 0.5, 0.5) end) -- move left middle
hs.hotkey.bind(mashmove, ',', function() move(0.50, 0.25, 0.5, 0.5) end) -- move right third

-- move left third, middle third, right third
hs.hotkey.bind(mashmove, 'd', function() move(0.0, 0.0, 0.33, 1.0) end) -- move left third
hs.hotkey.bind(mashmove, 'f', function() move(0.33, 0.0, 0.33, 1.0) end) -- move middle third
hs.hotkey.bind(mashmove, 'g', function() move(0.33 * 2, 0.0, 0.33, 1.0) end) -- move right third

-- move left two thirds right one third, right two thirds left one third
hs.hotkey.bind(mashmove, 'w', function() move(0.0, 0.0, 0.66, 1.0) end) -- move left two thirds
hs.hotkey.bind(mashmove, 'e', function() move(0.66, 0.0, 0.34, 1.0) end) -- move right third
hs.hotkey.bind(mashmove, 't', function() move(0.34, 0.0, 0.66, 1.0) end) -- move right two thirds
hs.hotkey.bind(mashmove, 'r', function() move(0.0, 0.0, 0.34, 1.0) end) -- move left two thirds
