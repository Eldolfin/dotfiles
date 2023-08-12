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

-- set python interpreter path (nix)
vim.g.python3_host_prog = "/home/oscar/.nix-profile/bin/python3"

-- manual lsp installs, because nix
local nvim_lsp = require("lspconfig")
nvim_lsp['pylsp'].setup {
  cmd = { '/home/oscar/.nix-profile/bin/pylsp' },
}

nvim_lsp['ruff_lsp'].setup {
  cmd = { '/home/oscar/.nix-profile/bin/ruff-lsp' },
}

nvim_lsp['lua_ls'].setup {
  cmd = { '/home/oscar/.nix-profile/bin/lua-language-server' },
}


nvim_lsp['clangd'].setup {
  cmd = { '/run/current-system/sw/bin/clangd' },
}

nvim_lsp['rust_analyzer'].setup {
  cmd = { '/run/current-system/sw/bin/rust-analyzer' },
}

nvim_lsp['rnix'].setup {
  cmd = { '/home/oscar/.nix-profile/bin/rnix-lsp' },
}


nvim_lsp['pyright'].setup {
  cmd = { '/home/oscar/.nix-profile/bin/pyright-langserver', '--stdio' },
}
