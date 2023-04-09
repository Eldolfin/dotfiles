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
