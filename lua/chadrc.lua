-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.ui = {
  telescope = {
    style = "bordered",
  },
  cmp = {
    style = "atom_colored",
    icons = true,
  },
  statusline = {
    theme = "minimal",
    separator_style = "round",
    order = {
      "mode",
      "git",
      "%=",
      "lsp_msg",
      -- "copilot",
      "%=",
      "diagnostics",
      "cursor",
    },
  },
}

M.base46 = {
  theme = "gruvbox",

  -- hl_override = {
  --   Comment = { italic = true },
  --   ["@comment"] = { italic = true },
  -- },
}

M.nvdash = {
  load_on_startup = true,
}

M.lsp = {
  signature = true,
}

M.colorify = {
  enabled = false,
}

return M
