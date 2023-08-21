return {
  "copilot.lua",
  enable = false,
  config = function()
    require("copilot").setup({
      filetypes = { "yaml" },
    })
  end
}
