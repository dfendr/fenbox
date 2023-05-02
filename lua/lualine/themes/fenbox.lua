-- Copyright (c) 2020-2021 hoob3rt
-- MIT license, see LICENSE for more details.
-- stylua: ignore
local c = require("fenbox.colors").config()

return {
  normal = {
    a = { fg = c.dark, bg = c.light_blue, gui = "bold" },
    b = { fg = c.light_blue, bg = c.background },
    c = { fg = c.milk, bg = c.background },
  },
  insert = {
    a = { fg = c.dark, bg = c.soft_green, gui = "bold" },
    b = { fg = c.bright_yellow, bg = c.background },
    c = { fg = c.milk, bg = c.background },
  },
  visual = {
    a = { fg = c.dark, bg = c.milk, gui = "bold" },
    b = { fg = c.milk, bg = c.background },
    c = { fg = c.milk, bg = c.background },
  },
  replace = {
    a = { fg = c.dark, bg = c.error_red, gui = "bold" },
    b = { fg = c.error_red, bg = c.background },
    c = { fg = c.milk, bg = c.background },
  },
  command = {
    a = { fg = c.dark, bg = c.soft_green, gui = "bold" },
    b = { fg = c.soft_green, bg = c.background },
    c = { fg = c.milk, bg = c.background },
  },
  inactive = {
    a = { fg = c.gray, bg = c.dark_gray, gui = "bold" },
    b = { fg = c.gray, bg = c.dark_gray },
    c = { fg = c.gray, bg = c.dark_gray },
  },
}
}
