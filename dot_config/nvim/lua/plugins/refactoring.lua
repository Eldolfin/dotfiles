return {
  'ThePrimeagen/refactoring.nvim',
  lazy = false,
  config = function ()
    require('refactoring').setup({})
    -- load refactoring Telescope extension
    require("telescope").load_extension("refactoring")

    -- remap to open the Telescope refactoring menu in visual mode
    require("which-key").register({
      rr = {
        "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
        "refactoring menu",
      },
    }, { mode = "v", prefix = "<leader>" })
  end

}
