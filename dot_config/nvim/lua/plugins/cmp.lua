return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources({
      { name = "copilot" },
      { name = "luasnip" },
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "path" },
      { name = "emoji" },
    })
  end,
}
