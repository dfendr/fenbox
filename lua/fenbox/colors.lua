local util = require("fenbox.util")

local M = {}

local gruvboxbaby_palette = {
  dark0 = "#0d0e0f",
  dark1 = "#171919",
  dark2 = "#5E554F",
  dark = "#202020",
  foreground = "#ebdbb2",
  background = "#282828",
  background_dark = "#1d2021",
  background_light = "#32302f",
  medium_gray = "#504945",
  comment = "#665c54",
  grey = "#DEDEDE",
  soft_yellow = "#eebd35",
  soft_green = "#98971a",
  faded_green = "#79740e",
  bright_yellow = "#fabd2f",
  neutral_yellow = "#d79921",
  faded_yellow = "#b57614",
  orange = "#d65d0e",
  red = "#fb4934",
  error_red = "#cc241d",
  magenta = "#b16286",
  pink = "#D4879C",
  light_blue = "#7fa2ac",
  dark_gray = "#83a598",
  blue_gray = "#458588",
  forest_green = "#689d6a",
  clean_green = "#8ec07c",
  milk = "#E7D7AD",
  none = "NONE",
}

-- these are backgrounds
gruvboxbaby_palette.diff = {
  add = "#26332c",
  change = "#273842",
  delete = "#572E33",
  text = "#314753",
}
M.p = gruvboxbaby_palette

local original_palette = vim.tbl_extend("force", gruvboxbaby_palette, {
  foreground = "#fbf1c7",
  soft_green = "#b8bb26",
  forest_green = "#b8bb26",
  soft_yellow = "#fabd2f",
  light_blue = "#83a598",
  magenta = "#d3869b",
  orange = "#fe8019",
  gray = "#928374",
  comment = "#928374",
})

function M.config(config)
  config = config or require("fenbox.config")
  local colors
  if config.use_gruvboxbaby_palette then
    colors = gruvboxbaby_palette
  else
    colors = original_palette
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
