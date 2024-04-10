local util = require("fenbox.util")

local M = {}

local palette = {
  background = "#282828",
  background_dark = "#1d2021",
  background_light = "#32302f",
  blue_gray = "#458588",
  bright_yellow = "#fabd2f",
  clean_green = "#8ec07c",
  dark = "#202020",
  dark0 = "#0d0e0f",
  dark1 = "#171919",
  dark2 = "#5E554F",
  dark_gray = "#83a598",
  error_red = "#cc241d",
  faded_green = "#79740e",
  faded_yellow = "#b57614",
  grey = "#DEDEDE",
  medium_gray = "#504945",
  milk = "#E7D7AD",
  neutral_yellow = "#d79921",
  none = "NONE",
  pink = "#D4879C",
  red = "#fb4934",

  comment = "#928374",
  foreground = "#fbf1c7",
  forest_green = "#b8bb26",
  gray = "#928374",
  light_blue = "#83a598",
  magenta = "#d3869b",
  orange = "#fe8019",
  soft_green = "#b8bb26",
  soft_yellow = "#fabd2f",
}

-- these are backgrounds
palette.diff = {
  add = "#26332c",
  change = "#273842",
  delete = "#572E33",
  text = "#314753",
}
M.p = palette

local gruvboxbaby_palette = vim.tbl_extend("force", palette, {
  comment = "#665c54",
  foreground = "#ebdbb2",
  forest_green = "#689d6a",
  light_blue = "#7fa2ac",
  magenta = "#b16286",
  orange = "#d65d0e",
  soft_green = "#98971a",
  soft_yellow = "#eebd35",
})

function M.config(config)
  config = config or require("fenbox.config")
  local colors
  if config.use_gruvboxbaby_palette then
    colors = gruvboxbaby_palette
  else
    colors = palette
  end

  local intensity_map = {
    ["dark"] = {
      dark = colors.dark0,
      background = colors.background_dark,
      background_dark = util.darken(colors.background_dark, 0.8),
    },
    ["medium"] = {
      background = colors.background,
      background_dark = util.darken(colors.background, 0.9),
    },
    ["soft"] = {
      background = colors.background_light,
      background_dark = util.darken(colors.background_light, 0.8),
      background_light = util.lighten(colors.background_light, 0.95),
    },
    ["soft_flat"] = {
      background = colors.background_light,
      background_dark = colors.background_light,
      background_light = util.lighten(colors.background_light, 0.95),
    },
  }

  local background = config.background_color or colors.background
  if intensity_map[background] then
    colors = vim.tbl_extend("force", colors, intensity_map[background])
  end

  if config.transparent_mode then
    local transparent = {
      background = colors.none,
      background_dark = colors.none,
    }
    colors = vim.tbl_extend("force", colors, transparent)
  end

  if config.color_overrides then
    for override_color, new_color in pairs(config.color_overrides) do
      colors[override_color] = new_color
    end
  end
  return colors
end

return M
