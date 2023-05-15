-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Run make with F9
vim.api.nvim_set_keymap(
  "n",
  "<F9>",
  ":w | topleft vs | terminal make<CR>:startinsert<CR>",
  { noremap = true, silent = true }
)

require("which-key").register({
  c = {
    p = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Projects symbols" },
    o = { "<cmd>Telescope lsp_document_symbols<cr>", "File symbols" },
  },
}, { prefix = "<leader>" })
