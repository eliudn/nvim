return {
  --"wuelnerdotexe/vim-enfocado",
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  --init = function()
  --vim.g.enfocado_style = "neon"
  --end,
  opts ={},
  config = function()
    vim.cmd.colorscheme "tokyonight-night"
  end,
}
