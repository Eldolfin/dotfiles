-- Vimspector keybinds
vim.g.vimspector_enable_mappings = "HUMAN"

-- don't continue comments when pressing enters
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- nvim cmp <-> autopairs
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

-- enable folding
local opt = vim.opt
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99

-- manual lsp installs, because nix
local nvim_lsp = require("lspconfig")
nvim_lsp['pylsp'].setup {
  cmd = { 'pylsp' },
}

nvim_lsp['lua_ls'].setup {
  cmd = {'lua-language-server'},
}


nvim_lsp['clangd'].setup {
  cmd = { 'clangd' },
}


nvim_lsp['dartls'].setup {
  cmd = { 'dart', 'language-server', '--protocol=lsp' },
  -- filetypes = { 'dart' },
  -- init_options = {
  --   onlyAnalyzeProjectsWithOpenFiles = true,
  --   suggestFromUnimportedLibraries = true,
  --   closingLabels = true,
  --   outline = true,
  --   flutterOutline = true,
  -- },
  -- settings = {
  --   dart = {
  --     completeFunctionCalls = true,
  --     showTodos = true,
  --   },
  -- },
}
