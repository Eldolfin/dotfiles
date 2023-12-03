-- manual lsp installs, because nix
local nvim_lsp = require("lspconfig")

nvim_lsp["pylsp"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/pylsp" },
})

-- nvim_lsp["sqls"].setup({
--   cmd = { vim.fn.expand("$HOME/.nix-profile/bin/sqls") },
-- })

nvim_lsp["lua_ls"].setup({
  cmd = { vim.fn.expand("$HOME/.nix-profile/bin/lua-language-server") },
})

nvim_lsp["clangd"].setup({
  cmd = { vim.fn.expand("$HOME/.nix-profile/bin/clangd") },
})

local rt = require("rust-tools")
-- this is to avoir overwriting rust-tools configs
rt.config.options.server.cmd = { "/home/oscar/.nix-profile/bin/rust-analyzer" }
-- nvim_lsp["rust_analyzer"].setup({
--   cmd = { "/home/oscar/.nix-profile/bin/rust-analyzer" },
-- })

nvim_lsp["rnix"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/rnix-lsp" },
})

nvim_lsp["omnisharp"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/OmniSharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
})

nvim_lsp["pyright"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/pyright-langserver", "--stdio" },
})
