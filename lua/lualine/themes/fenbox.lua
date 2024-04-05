local c = require("fenbox.colors").config()
local funcs = require("fenbox.hsluv")

local mode_color = {
  n = c.comment,
  i = c.light_blue,
  v = c.pink,
  [""] = c.pink,
  V = c.pink,
  c = c.orange,
  no = "",
  s = c.orange,
  S = c.orange,
  [""] = c.orange,
  ic = "",
  R = c.red,
  Rv = "",
  cv = "",
  ce = "",
  r = c.red,
  rm = "",
  ["r?"] = "",
  ["!"] = c.light_blue,
  t = "",
  text = c.milk,
}

return {
  normal = {
    a = { fg = c.background, bg = mode_color.n, gui = "bold" },
    b = { fg = mode_color.text, bg = funcs.fade_RGB(mode_color.n, c.background, 90) },
    c = {
      fg = mode_color.text, --[[ bg = funcs.fade_RGB(n_color, background, 95) ]]
    },
  },
  insert = {
    a = { fg = c.background, bg = mode_color.i, gui = "bold" },
    b = { fg = mode_color.text, bg = funcs.fade_RGB(mode_color.i, c.background, 90) },
    c = { fg = mode_color.text },
  },
  visual = {
    a = { fg = c.background, bg = mode_color.v, gui = "bold" },
    b = { fg = mode_color.text, bg = funcs.fade_RGB(mode_color.v, c.background, 90) },
    c = { fg = mode_color.text },
  },

  visual_block = {
    a = { fg = c.background, bg = mode_color.v, gui = "bold" },
    b = { fg = mode_color.text, bg = funcs.fade_RGB(mode_color.v, c.background, 90) },
    c = { fg = mode_color.text },
  },
  replace = {
    a = { fg = c.background, bg = mode_color.r, gui = "bold" },
    b = { fg = mode_color.text, bg = funcs.fade_RGB(mode_color.r, c.background, 90) },
    c = { fg = mode_color.text },
  },

  inactive = {
    a = { fg = c.milk, bg = c.background },
    b = { fg = mode_color.text },
    c = { fg = mode_color.text },
  },
  command = {
    a = { fg = c.background, bg = mode_color.c, gui = "bold" },
    b = { fg = mode_color.text, bg = funcs.fade_RGB(mode_color.c, c.background, 90) },
    c = { fg = mode_color.text },
  },
}
