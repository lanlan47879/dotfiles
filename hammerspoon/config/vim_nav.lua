local function move(dir) 
    hs.eventtap.keyStroke({}, dir, 0)
end

local moveLeft = function() move("left") end
local moveDown = function() move("down") end
local moveUp = function() move("up") end
local moveRight = function() move("right") end

hs.hotkey.bind(mashnav, "h", moveLeft, nil, moveLeft)
hs.hotkey.bind(mashnav, "j", moveDown, nil, moveDown)
hs.hotkey.bind(mashnav, "k", moveUp, nil, moveUp)
hs.hotkey.bind(mashnav, "l", moveRight, nil, moveRight)