require "nvchad.options"

-- add yours here!

local o = vim.o

o.colorcolumn = "80" -- add a color column at 80 chars
o.exrc = true

o.backup = false
o.writebackup = false
o.swapfile = false

o.title = true
o.titlestring = "%t"

o.list = true
-- Just trailing whitespace and newline
o.listchars = "trail:·,eol:¬"

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  o.guifont = "ZedMono Nerd Font:h13"

  vim.g.neovide_show_border = true
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_floating_shadow = false
end
