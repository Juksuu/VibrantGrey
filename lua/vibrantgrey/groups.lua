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
  Group.new('Error', colors.red)

  Group.new('DiffAdd', colors.none, colors.green:dark(0.3))
  Group.new('DiffChange', colors.none, colors.blue:dark(0.3))
  Group.new('DiffDelete', colors.none, colors.red)
  Group.new('DiffText', colors.none, colors.blue)

  Group.new('SignColumn', colors.fg_highlight)
  Group.new('SignColumnSB', colors.fg_highlight)

  Group.new('Pmenu', colors.fg, colors.bg:dark(0.1))

  Group.new('Comment', colors.fg_highlight)

  Group.new('Constant', colors.pink)
  Group.new('Number', colors.pink)
  Group.new('Boolean', colors.pink)
  Group.new('Character', colors.green)
  -- Group.new('String')
  -- Group.new('Float')

  Group.new('Identifier', colors.orange2)
  Group.new('Function', colors.yellow)
  Group.new('Operator', colors.orange)

  Group.new('Keyword', colors.pink)
  Group.new('Exception', colors.violet)

  Group.new('Statement', groups.keyword)
  Group.new('Conditional', colors.blue:light(0.3))
  Group.new('Repeat', colors.blue:light(0.3))
  Group.new('Label', colors.blue:light(0.3))

  Group.new('PreProc', colors.pink)
  Group.new('Define', colors.violet)
  Group.new('Macro', colors.violet)
  -- Group.new('Include')
  -- Group.new('PreCondit')

  Group.new('Type', colors.blue)
  Group.new('Typedef', colors.blue)
  Group.new('Structure', colors.fg)
  Group.new('StorageClass', groups.Identifier)

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
  Group.new('LspDiagnosticsDefaultInformation', colors.blue)
  Group.new('LspDiagnosticsDefaultHint', colors.green)

  Group.new('LspDiagnosticsVirtualTextError', colors.red)
  Group.new('LspDiagnosticsVirtualTextWarning', colors.orange)
  Group.new('LspDiagnosticsVirtualTextInformation', colors.blue)
  Group.new('LspDiagnosticsVirtualTextHint', colors.green)


  -- Language Support

  -- HTML
  Group.new('htmlTag', groups.Keyword)
  Group.new('htmlEndTag', groups.Keyword)
  Group.new('htmlTagName', groups.Identifier)
  Group.new('htmlSpecialTagName', groups.Identifier)
  Group.new('htmlArg', colors.fg)
  Group.new('htmlValur', colors.fg)
  Group.new('htmlAttrEqual', groups.Operator)

  -- Css / Scss
  Group.new('cssIdentifier', groups.Identifier)
  Group.new('cssFunction', groups.Function)
  Group.new('cssBraces', colors.fg)
  Group.new('sassCssAttribute', groups.Identifier)
  Group.new('sassProperty', groups.Identifier)
  Group.new('sassFor', groups.Repeat)
  Group.new('sassWarn', colors.orange)

  -- Svelte
  Group.new('svelteBrace', colors.fg)
  Group.new('svelteAttr', groups.Operator)
  Group.new('svelteAttrEqual', groups.Operator)
  Group.new('svelteBlockKeyword', groups.Conditional)

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
  Group.new('luaLocal', groups.Keyword)

  -- Typescript
  Group.new('typescriptImport', groups.Keyword)
  Group.new('typescriptImportType', groups.Typedef)
  Group.new('typescriptEnumKeyword', groups.Keyword)
  Group.new('typescriptCastKeyword', groups.Keyword)
  Group.new('typescriptExport', groups.Keyword)
  Group.new('typescriptExportType', groups.Typedef)
  Group.new('typescriptBraces', colors.fg)
  Group.new('typescriptIdentifier', groups.Identifier)
  Group.new('typescriptVariable', groups.Keyword)
  Group.new('typescriptTypeReference', groups.Typedef)
  Group.new('typescriptType', groups.Typedef)
  Group.new('typescriptTypeCast', groups.Typedef)
  Group.new('typescriptEnum', colors.fg)
  Group.new('typescriptMember', groups.Identifier)
  Group.new('typescriptAliasDeclaration', colors.fg)
  Group.new('typescriptDestructureVariable', colors.fg)
  Group.new('typescriptCall', colors.fg)
  Group.new('typescriptArrowFunc', groups.Function)
  Group.new('typescriptLabel', groups.Identifier)
  Group.new('typescriptInterfaceName', colors.fg)

  -- Plugins support

  -- GitSigns
  Group.new('GitSignsAdd', colors.green:dark(0.3))
  Group.new('GitSignsChange', colors.blue:dark(0.3))
  Group.new('GitSignsDelete', colors.red)

  -- GitGutter
  Group.new('GitGutterAdd', colors.green:dark(0.3))
  Group.new('GitGutterChange', colors.blue:dark(0.3))
  Group.new('GitGutterDelete', colors.red)

  -- LspSaga
  Group.new('DiagnosticError', colors.red)
  Group.new('DiagnosticWarning', colors.orange)
  Group.new('DiagnosticInformation', colors.blue)
  Group.new('DiagnosticHint', colors.green)

  -- Fugitive
  Group.new('diffAdded', colors.green:dark(0.3))
  Group.new('diffRemoved', colors.red)
  Group.new('diffChanged', colors.blue:dark(0.3))
  Group.new('diffOldFile', colors.red)
  Group.new('diffNewFile', colors.green:dark(0.3))

  Group.new('fugitiveUnstagedHeading', colors.blue)
  Group.new('fugitiveUnstagedModifier', colors.blue)
  Group.new('fugitiveUntrackedHeading', colors.red)
  Group.new('fugitiveUntrackedModifier', colors.red)
  Group.new('fugitiveStagedHeading', colors.green)
  Group.new('fugitiveStagedModifier', colors.green)

  -- Treesitter
  Group.new('TSNamespace', colors.fg)
  Group.new('TSInclude', groups.Keyword)
  Group.new('TSLabel', groups.Define)
  Group.new('TSConstBuiltin', groups.Keyword)
  Group.new('TSFuncBuiltin', groups.Function)
  Group.new('TSStringEscape', colors.fg)
  Group.new('TSConstructor', colors.fg)
end

return M
