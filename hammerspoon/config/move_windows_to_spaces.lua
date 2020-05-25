-- from https://github.com/Hammerspoon/hammerspoon/issues/235#issuecomment-101069303
function moveToSpace(win, space)
    local clickPoint = win:zoomButtonRect()
 
    clickPoint.x = clickPoint.x + clickPoint.w + 5
    clickPoint.y = clickPoint.y + (clickPoint.h / 2)
 
    local mouseClickEvent = hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftmousedown, clickPoint)
    mouseClickEvent:post()
    hs.timer.usleep(150000)

    local nextSpaceDownEvent = hs.eventtap.event.newKeyEvent({"ctrl"}, space, true)
    nextSpaceDownEvent:post()
    hs.timer.usleep(150000)
 
    local nextSpaceUpEvent = hs.eventtap.event.newKeyEvent({"ctrl"}, space, false)
    nextSpaceUpEvent:post()
    hs.timer.usleep(150000)
 
    local mouseReleaseEvent = hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftmouseup, clickPoint)
    mouseReleaseEvent:post()
    hs.timer.usleep(150000)
 
    local frame = win:frame()
    local point = {x = frame.x + frame.w / 2, y = frame.y + frame.h / 2}
    hs.mouse.setAbsolutePosition(point)
    -- redrawBorder()
end

hs.hotkey.bind(mashmove, "1", function() moveToSpace(hs.window.frontmostWindow(), "1") end)
hs.hotkey.bind(mashmove, "2", function() moveToSpace(hs.window.frontmostWindow(), "2") end)
hs.hotkey.bind(mashmove, "3", function() moveToSpace(hs.window.frontmostWindow(), "3") end)
hs.hotkey.bind(mashmove, "4", function() moveToSpace(hs.window.frontmostWindow(), "4") end)
hs.hotkey.bind(mashmove, "5", function() moveToSpace(hs.window.frontmostWindow(), "5") end)
hs.hotkey.bind(mashmove, "6", function() moveToSpace(hs.window.frontmostWindow(), "6") end)