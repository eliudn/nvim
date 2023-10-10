return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require('neogen').setup {
      enabled = true,             --if you want to disable Neogen
      snippet_engine = "nvim_lsp",
       languages = {
        lua = {
            template = {
                annotation_convention = "emmylua" -- for a full list of annotation_conventions, see supported-languages below,
                -- for more template configurations, see the language's configuration file in configurations/{lang}.lua
                }
        },
    }
    }
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<Leader>ng", ":lua require('neogen').generate()<cr>", opts)
  end
}
