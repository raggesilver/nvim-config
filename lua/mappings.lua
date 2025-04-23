require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>lf", vim.diagnostic.open_float, {
  desc = "LSP open floating diagnostics",
})

map("n", "<D-s>", ":w<CR>") -- Save
map("i", "<D-s>", "<ESC>:w<CR>") -- Save on insert mode

map("i", "<M-[>", "<Plug>(copilot-previous)")
map("i", "<M-]>", "<Plug>(copilot-next)")
map("i", "<M-\\>", "<Plug>(copilot-suggest)")
map("i", "<M-Right>", "<Plug>(copilot-accept-word)")
map("i", "<M-C-Right>", "<Plug>(copilot-accept-line)")

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here

  map("n", "<D-s>", ":w<CR>") -- Save
  map("v", "<D-c>", '"+y') -- Copy
  map("n", "<D-v>", '"+P') -- Paste normal mode
  map("v", "<D-v>", '"+P') -- Paste visual mode
  map("c", "<D-v>", "<C-R>+") -- Paste command mode
  map("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  map("n", "<D-a>", "gg<S-v>G") -- Select all
  map("i", "<D-a>", "<ESC>gg<S-v>G") -- Select all insert mode

  map("t", "<D-v>", "<C-\\><C-n>pa")
end

-- Debugging
map("n", "<leader>bp", "<cmd> DapToggleBreakpoint <CR>", { desc = "Debug Toggle breakpoint" })
map("n", "<leader>bl", "<cmd> DapListBreakpoints <CR>", { desc = "Debug List breakpoints" })
map("n", "<leader>bc", "<cmd> DapContinue <CR>", { desc = "Debug Continue" })
