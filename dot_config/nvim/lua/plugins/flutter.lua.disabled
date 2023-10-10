return {
  -- Snippets
  "RobertBrunhage/flutter-riverpod-snippets",
  "Neevash/awesome-flutter-snippets",
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    opts = {
      widget_guides = {
        enabled = true,
      },
      lsp = {
        color = { -- show the derived colours for dart variables
          -- enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          -- background = true, -- highlight the background
        },
      },
    },
    setup = function()
      require("flutter-tools").setup {} -- use defaults
      require("telescope").load_extension("flutter")
    end,
  }
}
