return {
  "dccsillag/magma-nvim",
  config = function()
    -- setup keybinds
    local wk = require("which-key")

    wk.register({
      r = { "<cmd>MagmaEvaluateLine<cr>", "Run Line" },
    }, { prefix = "<leader>", mode = "n" })

    vim.api.nvim_set_keymap("x", "<leader>e", "<cmd>MagmaEvaluateVisual<cr>", { noremap = true, silent = true })
  end
}
