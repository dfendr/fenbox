-- Bufferline highlights from the fenbox palette.
-- Tabs sit on background_dark; the selected tab
-- takes the editor background so it joins the buffer.
--
--   require("bufferline").setup({
--     highlights = require("fenbox.integrations.bufferline").highlights,
--   })
local M = {}

local SELECTED = "_selected$"

-- Thin separator line between tabs
local SEPARATORS = { "separator", "separator_visible", "separator_selected", "tab_separator", "tab_separator_selected" }

function M.highlights(defaults)
  -- Other colorschemes keep bufferline's own colours
  if vim.g.colors_name ~= "fenbox" then
    return defaults.highlights
  end

  local c = require("fenbox.colors").config()
  local hls = vim.deepcopy(defaults.highlights)

  -- One bg per state, so derived groups (icons, diagnostics) match
  for name, hl in pairs(hls) do
    hl.bg = c.background_dark
    if name:match(SELECTED) then
      hl.bg = c.background
    end
  end

  for _, name in ipairs(SEPARATORS) do
    hls[name].fg = c.medium_gray
  end

  -- Text: dim tabs, bright selection and indicator
  hls.background.fg = c.comment
  hls.buffer_visible.fg = c.comment
  hls.buffer_selected.fg = c.foreground
  hls.indicator_selected.fg = c.foreground

  return hls
end

return M
