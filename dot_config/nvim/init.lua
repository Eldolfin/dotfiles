-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- enable folding
local opt = vim.opt
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99

-- nvim cmp <-> autopairs
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
