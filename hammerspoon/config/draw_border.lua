-- from https://github.com/JakeSc/dotfiles/blob/4a7068e9072523c4e9f5f693414fdc8a28c0a247/hammerspoon/plugins/windows/active_border.lua
local border_color = { hex = "#BD93F9"}
local global_border = nil
showborders      = true
function redrawBorder()
    local win = hs.window.focusedWindow()
    if win ~= nil and win:isStandard() then
        local f = win:frame()
        local size = win:size()
        if global_border ~= nil then
            global_border:delete()
        end
        local rect = hs.drawing.rectangle(hs.geometry.rect(f.x - 2, f.y - 2, f.w + 4, f.h + 4))
        rect:setRoundedRectRadii(10,10)
        global_border = rect
        global_border:setStrokeColor(border_color)
        global_border:setFill(false)
        global_border:setStrokeWidth(5)
        global_border:setLevel('floating')
        global_border:setBehaviorByLabels({'canJoinAllSpaces', 'transient'})
        global_border:show()
    elseif global_border ~= nil then
        global_border:hide()
    end
end

-- handle apps
allwindows = hs.window.filter.new()
allwindows:rejectApp('Alfred')

allwindows:subscribe(hs.window.filter.windowCreated, function () redrawBorder() end)
allwindows:subscribe(hs.window.filter.windowFocused, function () redrawBorder() end)
allwindows:subscribe(hs.window.filter.windowMoved, function () redrawBorder() end)
allwindows:subscribe(hs.window.filter.windowUnfocused, function () redrawBorder() end)
allwindows:subscribe(hs.window.filter.windowDestroyed, function () redrawBorder() end)

-- initialize
redrawBorder()