local utils = require("vibrantgrey.utils")

local colors = {
    none = "NONE",
    black = "#000000",
    white = "#ffffff",

    bg = "#3a383f",
    fg = "#eafce3",
    fg2 = "#5c6773",

    green = "#91f06b",
    red = "#dd3033",
    blue = "#3081dd",
    yellow = "#f9f95c",

    pink = "#ebc6f9",
    pink2 = "#ed537e",
    orange = "#cc9f1a",
    orange2 = "#efc99e"
  }

  utils.bg = colors.bg

  colors.error = colors.red
  colors.warning = colors.yellow
  colors.info = colors.blue
  colors.hint = colors.green
  colors.string = colors.green

  colors.statement = utils.adjust_brightness(colors.blue, 1.5)
  colors.bg_highlight = utils.adjust_brightness(colors.bg, 1.5)
  colors.bg_highlight2 = utils.adjust_brightness(colors.fg2, 0.8)

  colors.diff = {
    add = utils.adjust_brightness(colors.green, 0.5),
    delete = utils.adjust_brightness(colors.red, 0.5),
    change = utils.adjust_brightness(colors.blue, 0.5),
    text = colors.blue
  }

return colors
