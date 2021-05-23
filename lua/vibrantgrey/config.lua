local M

local function opt(key, default)
  key = "vibrantgrey_" .. key
  if vim.g[key] == nil then
    return default
  end
  return vim.g[key]
end

M = {
  italic_comments = opt('italic_comments', true),
  transparent = opt('transparent', false)
}

return M
