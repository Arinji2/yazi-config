-- @since 25.2.7

local function setup()
	local old_layout = Tab.layout

	-- Disable header
	Header.redraw = function()
		return {}
	end

	-- Increase tab height to cover the header's line
	Tab.layout = function(self, ...)
		self._area = ui.Rect({
			x = self._area.x,
			y = self._area.y - 1, -- Move up by 1 line
			w = self._area.w,
			h = self._area.h + 1, -- Expand to fill the space
		})
		return old_layout(self, ...)
	end
end

return { setup = setup }
