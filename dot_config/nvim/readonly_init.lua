vim.cmd([[
  






























]])
require("tokyonight").setup({})

-- Set up globals {{{
do
  local nixvim_globals = {["mapleader"] = " "}

  for k,v in pairs(nixvim_globals) do
    vim.g[k] = v
  end
end
-- }}}
-- Set up options {{{
do
  local nixvim_options = {["clipboard"] = "unnamedplus",["number"] = true,["shiftwidth"] = 2,["termguicolors"] = true}

  for k,v in pairs(nixvim_options) do
    vim.opt[k] = v
  end
end
-- }}}

vim.loader.disable()
vim.cmd([[
  let $BAT_THEME = 'tokyonight'

colorscheme tokyonight

]])
require("which-key").setup({})

require("todo-comments").setup{}

require('refactoring').setup({})

require('nvim-autopairs').setup({})

vim.notify = require('notify');
require('notify').setup({})

require("multicursors").setup({})

require('mini.ai').setup({})
require('mini.bufremove').setup({})
require('mini.comment').setup({})
require('mini.hipatterns').setup({})
require('mini.indentscope').setup({})
require('mini.surround').setup({})

local dashboard = require("dashboard")



require('better_escape').setup({["mapping"] = {"jj","jk"}})

require("noice").setup({})

do
  local __telescopeExtensions = {"frecency","file_browser"}

  require('telescope').setup({})

  for i, extension in ipairs(__telescopeExtensions) do
    require('telescope').load_extension(extension)
  end
end

require("lualine").setup({["inactive_sections"] = {["lualine_a"] = {"filename"},["lualine_z"] = {"location"}},["options"] = {["component_separators"] = {["left"] = "|",["right"] = "|"},["icons_enabled"] = true,["section_separators"] = {["left"] = "",["right"] = ""}},["sections"] = {["lualine_a"] = {{"mode",["padding"] = {["left"] = 0,["right"] = 2},["separator"] = {["left"] = ""}}},["lualine_b"] = {"branch"},["lualine_y"] = {"progress"},["lualine_z"] = {{"location",["padding"] = {["left"] = 2,["right"] = 0},["separator"] = {["right"] = ""}}}}})
require("luasnip").config.set_config({})

require("null-ls").setup({})

-- LSP {{{
do
  

  local __lspServers = {{["name"] = "tsserver"},{["name"] = "ruff_lsp"},{["name"] = "pylsp"},{["extraOptions"] = {["cmd"] = {"/nix/store/qslx9z4fzy63imhy7gwdj5rmkphxjsyw-omnisharp-roslyn-1.39.10/bin/OmniSharp"}},["name"] = "omnisharp"},{["name"] = "nixd"},{["name"] = "nil_ls"},{["extraOptions"] = {["settings"] = {["Lua"] = {["diagnostics"] = {["globals"] = {"vim"}},["runtime"] = {["version"] = "LuaJIT"},["telemetry"] = {["enable"] = false},["workspace"] = {["checkThirdParty"] = false,["library"] = {vim.api.nvim_get_runtime_file('', true)}}}}},["name"] = "lua_ls"},{["extraOptions"] = {["cmd"] = {"/nix/store/rvdswlhp2zq5f75kj0fyny1kzrs9rzhw-java-language-server-0.2.46/bin/java-language-server"}},["name"] = "java_language_server"},{["extraOptions"] = {["cmd"] = {"/nix/store/d30vpvgbn7l5kmx28cj9abm0nlcnmbm7-vscode-langservers-extracted-4.8.0/bin/vscode-html-language-server","--stdio"}},["name"] = "html"},{["name"] = "gopls"},{["extraOptions"] = {["cmd"] = {"/nix/store/d30vpvgbn7l5kmx28cj9abm0nlcnmbm7-vscode-langservers-extracted-4.8.0/bin/vscode-eslint-language-server","--stdio"}},["name"] = "eslint"},{["name"] = "csharp_ls"},{["name"] = "clangd"},{["name"] = "ccls"}}
  local __lspOnAttach = function(client, bufnr)
    
  end
  local __lspCapabilities = function()
    capabilities = vim.lsp.protocol.make_client_capabilities()

    

    return capabilities
  end

  local __setup = {
            on_attach = __lspOnAttach,
            capabilities = __lspCapabilities()
          }

  for i,server in ipairs(__lspServers) do
    if type(server) == "string" then
      require('lspconfig')[server].setup(__setup)
    else
      local options = server.extraOptions

      if options == nil then
        options = __setup
      else
        options = vim.tbl_extend("keep", options, __setup)
      end

      require('lspconfig')[server.name].setup(options)
    end
  end

  require('rust-tools').setup({["server"] = {["on_attach"] = __lspOnAttach}})

end
-- }}}

require('nvim-treesitter.configs').setup({["highlight"] = {["enable"] = true}})
__parserFiltypeMappings = {}

for parser_name, ft in pairs(__parserFiltypeMappings) do
  require('vim.treesitter.language').register(parser_name, ft)
end

require('neo-tree').setup({})

do
  local cmp = require('cmp')
cmp.setup({["mapping"] = nil})

end

-- Set up keybinds {{{
do
  local __nixvim_binds = {{["action"] = "<cmd>:w<CR>",["key"] = "<C-s>",["mode"] = ""}}
  for i, map in ipairs(__nixvim_binds) do
    vim.keymap.set(map.mode, map.key, map.action, map.options)
  end
end
-- }}}


