grid = {
	height = 8,
	width = 8,
	margin = 20
}

hs.grid.setGrid(hs.geometry.size(grid.width, grid.height))
hs.grid.setMargins(hs.geometry.size(grid.margin, grid.margin))

hs.grid.ui.textColor = {0.973, 0.973, 0.949}

hs.grid.ui.cellColor = {0.157, 0.165, 0.212, 0.50}
hs.grid.ui.cellStrokeColor = {1, 0.475, 0.776}
hs.grid.ui.selectedColor = {1, 0.475, 0.776, 0.50}

hs.grid.ui.highlightColor = {0.741, 0.476, 0.976, 0.0}
hs.grid.ui.highlightStrokeColor = {0.741, 0.476, 0.976, 0.0}

hs.grid.ui.cyclingHighlightColor = {0.741, 0.476, 0.976, 0.50}
hs.grid.ui.cyclingHighlightStrokeColor = {0.741, 0.476, 0.976, 0.50}

hs.grid.ui.textSize = 20
hs.grid.ui.cellStrokeWidth = 0
hs.grid.ui.highlightStrokeWidth = 0

hs.grid.ui.fontName = 'Helvetica Neue'
hs.grid.ui.showExtraKeys = false

hs.hotkey.bind(mashsnap, "g", function() hs.grid.toggleShow() end)