-- Copyright (c) 2020-2021 hoob3rt
-- MIT license, see LICENSE for more details.
-- stylua: ignore
local c = require("fenbox.colors").config()
local hsluv = require("fenbox.hsluv")

local mode_color = {
  n = c.comment,
  i = c.soft_green,
  v = c.orange,
  [""] = c.orange,
  V = c.orange,
  c = c.pink,
  no = "",
  s = c.pink,
  S = c.pink,
  [""] = c.pink,
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

local background = c.background_dark

return {
  normal = {
    -- a = { fg = c.dark, bg = c.light_blue, gui = "bold" },
    a = { fg = c.background, bg = c.comment, gui = "bold" },
    -- b = { fg = c.light_blue, bg = c.background },
    b = { fg = c.milk, bg = hsluv.fade_RGB(c.light_blue, background, 90) },
    -- c = { fg = c.milk, bg = c.background },
    c = {
      fg = c.milk,--[[ bg = funcs.fade_RGB(n_color, background, 95) ]]
    },
  },
  -- insert = {
  --   a = { fg = c.dark, bg = c.soft_green, gui = "bold" },
  --   b = { fg = c.bright_yellow, bg = c.background },
  --   c = { fg = c.milk, bg = c.background },
  -- },
  -- visual = {
  --   a = { fg = c.dark, bg = c.milk, gui = "bold" },
  --   b = { fg = c.milk, bg = c.background },
  --   c = { fg = c.milk, bg = c.background },
  -- },
  -- replace = {
  --   a = { fg = c.dark, bg = c.error_red, gui = "bold" },
  --   b = { fg = c.error_red, bg = c.background },
  --   c = { fg = c.milk, bg = c.background },
  -- },
  -- command = {
  --   a = { fg = c.dark, bg = c.soft_green, gui = "bold" },
  --   b = { fg = c.soft_green, bg = c.background },
  --   c = { fg = c.milk, bg = c.background },
  -- },
  -- inactive = {
  --   a = { fg = c.gray, bg = c.dark_gray, gui = "bold" },
  --   b = { fg = c.gray, bg = c.dark_gray },
  --   c = { fg = c.gray, bg = c.dark_gray },
  -- },

  insert = {
    a = { fg = c.background, bg = mode_color.i },
    b = { fg = mode_color.text, bg = hsluv.fade_RGB(mode_color.i, background, 90) },
    c = { fg = mode_color.text },
  },
  visual = {
    a = { fg = c.background, bg = mode_color.v },
    b = { fg = mode_color.text, bg = hsluv.fade_RGB(mode_color.v, background, 90) },
    c = { fg = mode_color.text },
  },

  visual_block = {
    a = { fg = c.background, bg = mode_color.v },
    b = { fg = mode_color.text, bg = hsluv.fade_RGB(mode_color.v, background, 90) },
    c = { fg = mode_color.text },
  },
  replace = {
    a = { fg = c.background, bg = mode_color.r },
    b = { fg = mode_color.text, bg = hsluv.fade_RGB(mode_color.r, background, 90) },
    c = { fg = mode_color.text },
  },

  inactive = {
    a = { fg = c.milk },
    b = { fg = mode_color.text },
    c = { fg = mode_color.text },
  },
  command = {
    a = { fg = c.background, bg = mode_color.c },
    b = { fg = mode_color.text, bg = hsluv.fade_RGB(mode_color.c, background, 90) },
    c = { fg = mode_color.text },
  },
}
