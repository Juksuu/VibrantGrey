local Color, colors, Group, groups, styles = require("colorbuddy").setup()

local M = {}

function M.createGroups()
  local bg_highlight = colors.fg_highlight:dark(0.2)

  -- Base groups

  Group.new('Normal', colors.default_fg, colors.default_bg) -- Normal text
  Group.new('Cursor', colors.default_bg, colors.default_fg) -- Character under cursor
  Group.new('Directory', colors.green) -- Directory names
  Group.new('VertSplit', bg_highlight, bg_highlight)
  Group.new('LineNr', colors.fg_highlight)
  Group.new('CursorLineNr', colors.white)
  Group.new('Visual', colors.none, bg_highlight)
  Group.new('Title', colors.pink)

  Group.new('DiffAdd', colors.none, colors.green:dark(0.3))
  Group.new('DiffChange', colors.none, colors.blue:dark(0.3))
  Group.new('DiffDelete', colors.none, colors.red:dark(0.3))
  Group.new('DiffText', colors.none, colors.blue)

  Group.new('SignColumn', colors.fg_highlight)
  Group.new('SignColumnSB', colors.fg_highlight)

  Group.new('Pmenu', colors.fg, colors.bg:dark(0.1))

  Group.new('Comment', colors.fg_highlight)

  Group.new('Constant', colors.pink)
  Group.new('Number', colors.pink)
  -- Group.new('String')
  -- Group.new('Character')
  -- Group.new('Boolean')
  -- Group.new('Float')

  Group.new('Identifier', colors.orange2)
  Group.new('Function', colors.yellow)
  Group.new('Operator', colors.orange)

  Group.new('Keyword', colors.pink)
  -- Group.new('Exception')

  Group.new('Statement', groups.keyword)
  Group.new('Conditional', colors.blue:light(0.1))
  Group.new('Repeat', colors.blue:light(0.1))
  Group.new('Label', colors.blue:light(0.1))

  Group.new('PreProc', colors.pink)
  -- Group.new('Include')
  -- Group.new('Define')
  -- Group.new('Macro')
  -- Group.new('PreCondit')

  Group.new('Type', groups.keyword)
  Group.new('Typedef', colors.blue)
  Group.new('Structure', colors.fg)
  -- Group.new('StorageClass')

  Group.new('Special', colors.white)
  Group.new('SpecialChar', colors.white)
  -- Group.new('Tag')
  -- Group.new('Delimiter')
  -- Group.new('SpecialComment')
  -- Group.new('Debug')

  -- Neovim
  Group.new('healthError', colors.red)
  Group.new('healthSuccess', colors.green)
  Group.new('healthWarning', colors.yellow)

  -- Built-in Lsp
  Group.new('LspReferenceText', colors.fg_highlight)
  Group.new('LspReferenceRead', colors.fg_highlight)
  Group.new('LspReferenceWrite', colors.fg_highlight)

  Group.new('LspDiagnosticsDefaultError', colors.red)
  Group.new('LspDiagnosticsDefaultWarning', colors.orange)
  Group.new('LspDiagnosticsDefaultInformation', colors.green)
  Group.new('LspDiagnosticsDefaultHint', colors.blue)

  Group.new('LspDiagnosticsVirtualTextError', colors.red)
  Group.new('LspDiagnosticsVirtualTextWarning', colors.orange)
  Group.new('LspDiagnosticsVirtualTextInformation', colors.blue)
  Group.new('LspDiagnosticsVirtualTextHint', colors.green)


  -- Language Support

  -- Lua
  Group.new('luaFunc', groups.Function)
  Group.new('luaStatement', groups.Statement)
  Group.new('luaKeyword', groups.Keyword)
  Group.new('luaMyKeyword', groups.Keyword)
  Group.new('luaFunctionCall', groups.Function)
  Group.new('luaFuncCall', groups.Function)
  Group.new('luaFuncKeyword', groups.Keyword)
  Group.new('luaFuncId', colors.none)
  Group.new('luaFuncName', groups.Function)

  -- Plugins support

  -- GitSigns
  Group.new('GitSignsAdd', colors.green:dark(0.3))
  Group.new('GitSignsChange', colors.blue:dark(0.3))
  Group.new('GitSignsDelete', colors.red:dark(0.3))

  -- GitGutter
  Group.new('GitGutterAdd', colors.green:dark(0.3))
  Group.new('GitGutterChange', colors.blue:dark(0.3))
  Group.new('GitGutterDelete', colors.red:dark(0.3))

  -- LspSaga
  Group.new('DiagnosticError', colors.red)
  Group.new('DiagnosticWarning', colors.orange)
  Group.new('DiagnosticInformation', colors.blue)
  Group.new('DiagnosticHint', colors.green)

  -- Fugitive
  Group.new('diffAdded', colors.green:dark(0.3))
  Group.new('diffRemoved', colors.red:dark(0.3))
  Group.new('diffChanged', colors.blue:dark(0.3))
  Group.new('diffOldFile', colors.red:dark(0.3))
  Group.new('diffNewFile', colors.green:dark(0.3))

  Group.new('fugitiveUnstagedHeading', colors.blue)
  Group.new('fugitiveUnstagedModifier', colors.blue)
  Group.new('fugitiveUntrackedHeading', colors.red)
  Group.new('fugitiveUntrackedModifier', colors.red)
  Group.new('fugitiveStagedHeading', colors.green)
  Group.new('fugitiveStagedModifier', colors.green)

end

return M
