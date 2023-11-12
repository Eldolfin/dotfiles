-- manual lsp installs, because nix
local nvim_lsp = require("lspconfig")
nvim_lsp["pylsp"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/pylsp" },
})

nvim_lsp["ruff_lsp"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/ruff-lsp" },
})

nvim_lsp["lua_ls"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/lua-language-server" },
})

nvim_lsp["clangd"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/clangd" },
})

nvim_lsp["rust_analyzer"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/rust-analyzer" },
})

nvim_lsp["rnix"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/rnix-lsp" },
})

nvim_lsp["omnisharp"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/OmniSharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
})

nvim_lsp["pyright"].setup({
  cmd = { "/home/oscar/.nix-profile/bin/pyright-langserver", "--stdio" },
})
