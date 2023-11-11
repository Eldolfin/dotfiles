-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.lsp_shit")
require("config.after")

-- set python interpreter path (nix)
vim.g.python3_host_prog = "/home/oscar/.nix-profile/bin/python3"

-- don't continue comments when pressing enters
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
