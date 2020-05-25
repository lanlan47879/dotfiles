x = {
	-- common windows
	leftWindow = 0,
	rightWindow = grid.width / 2,
	centerWindow = 2,

	-- other windows
	leftOneThirdWindow = 0,
	leftTwoThirdsWindow = 0,
	rightOneThirdWindow = 5,
	rightTwoThirdsWindow = 3
}

y = {
	-- common windows
	topWindow = 0,
	bottomWindow = grid.height / 2,
	centerWindow = 2
}

w = {
	-- common windows
	fullWindow = grid.width,
	halfWindow = grid.width / 2,
	centerWindow = grid.width / 2,

	-- other windows
	oneThirdWindow = 3,
	twoThirdsWindow =  5
}

h = {
	-- common windows
	fullWindow = grid.height,
	halfWindow = grid.height / 2,
	centerWindow = grid.width / 2
}

function positionWindow(x, y, w, h)
	local win = hs.window.focusedWindow()
	if not win then 
		return
	end
	local pos = hs.geometry(x, y, w, h)
	hs.grid.set(win, pos)

	local frame = win:frame()
    local point = {x = frame.x + frame.w / 2, y = frame.y + frame.h / 2}
	hs.mouse.setAbsolutePosition(point)
	-- redrawBorder()
end

-- maximize, center
hs.hotkey.bind(mashsnap, 'return', function() positionWindow(x.leftWindow, y.topWindow, w.fullWindow, h.fullWindow)  end)
hs.hotkey.bind(mashsnap, 'c', function() positionWindow(x.centerWindow, y.centerWindow, w.centerWindow, h.centerWindow) end)

-- move left, right, up, down
hs.hotkey.bind(mashsnap, "h", function() positionWindow(x.leftWindow, y.topWindow, w.halfWindow, h.fullWindow) end)
hs.hotkey.bind(mashsnap, "j", function() positionWindow(x.leftWindow, y.bottomWindow, w.fullWindow, h.halfWindow) end)
hs.hotkey.bind(mashsnap, "k", function() positionWindow(x.leftWindow, y.topWindow, w.fullWindow, h.halfWindow) end)
hs.hotkey.bind(mashsnap, "l", function() positionWindow(x.rightWindow, y.topWindow, w.halfWindow, h.fullWindow) end)

-- move top left, top right, bottom left, bottom right
hs.hotkey.bind(mashsnap, 'y', function() positionWindow(x.leftWindow, y.topWindow, w.halfWindow, h.halfWindow) end) 
hs.hotkey.bind(mashsnap, 'o', function() positionWindow(x.rightWindow, y.topWindow, w.halfWindow, h.halfWindow) end) 
hs.hotkey.bind(mashsnap, 'u', function() positionWindow(x.leftWindow, y.bottomWindow, w.halfWindow, h.halfWindow) end) 
hs.hotkey.bind(mashsnap, 'i', function() positionWindow(x.rightWindow, y.bottomWindow, w.halfWindow, h.halfWindow) end) 

-- move left middle, right middle 
hs.hotkey.bind(mashsnap, ';', function() positionWindow(x.leftWindow, y.centerWindow, w.centerWindow, h.centerWindow) end)
hs.hotkey.bind(mashsnap, '\'', function() positionWindow(x.rightWindow, y.centerWindow, w.centerWindow, h.centerWindow) end)

-- move left two thirds right one third, right two thirds left one third
hs.hotkey.bind(mashsnap, 'b', function() positionWindow(x.leftTwoThirdsWindow, y.topWindow, w.twoThirdsWindow, h.fullWindow) end) 
hs.hotkey.bind(mashsnap, 'n', function() positionWindow(x.rightOneThirdWindow, y.topWindow, w.oneThirdWindow, h.fullWindow) end) 

hs.hotkey.bind(mashsnap, 'm', function() positionWindow(x.leftOneThirdWindow, y.topWindow, w.oneThirdWindow, h.fullWindow) end)
hs.hotkey.bind(mashsnap, ',', function() positionWindow(x.rightTwoThirdsWindow, y.topWindow, w.twoThirdsWindow, h.fullWindow) end) 
hs.hotkey.bind(mashsnap, '.', function() positionWindow(x.leftOneThirdWindow, y.topWindow, w.oneThirdWindow, h.halfWindow) end)
hs.hotkey.bind(mashsnap, '/', function() positionWindow(x.leftOneThirdWindow, y.bottomWindow, w.oneThirdWindow, h.halfWindow) end)