local Color = require("colorbuddy").setup()

local M = {}

function M.createColors()
  Color.new('white', '#ffffff')
  Color.new('black', '#000000')
  Color.new('green', '#53ed75')
  Color.new('red', '#dd3033')
  Color.new('blue', '#128bae')
  Color.new('yellow', '#cbed53')
  Color.new('pink', '#ed537e')
  Color.new('orange', '#cc9f1a')
  Color.new('orange2', '#ed7553')
  Color.new('violet', '#7553ed')

  Color.new('default_bg', '#3a383f')
  Color.new('default_fg', '#d0d6d2')
  Color.new('fg_highlight', '#5c6773')
end

return M
