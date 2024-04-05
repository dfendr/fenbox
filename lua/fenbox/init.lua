local util = require("fenbox.util")
local theme = require("fenbox.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
