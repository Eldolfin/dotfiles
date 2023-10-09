-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Job = require("plenary.job")

-- async
local function custom_make()
  vim.api.nvim_command('write')
  Job:new({
    command = "alacritty",
    args = { "-o", "font.size=10","-e", "bash", "-c", "i3-msg floating enable; make check || sleep 1d" },
  }):start()
end

-- Run make with F9
vim.api.nvim_set_keymap(
  "n",
  "<F9>",
  -- ":w | topleft vs | terminal make<CR>:startinsert<CR>",
  -- ":w | !alacritty -e bash -c 'i3-msg floating enable; make || sleep 1d'<CR>",
  "",
  { noremap = true, silent = true, callback = custom_make }
)

require("which-key").register({
  c = {
    p = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Projects symbols" },
    o = { "<cmd>Telescope lsp_document_symbols<cr>", "File symbols" },
  },
}, { prefix = "<leader>" })
