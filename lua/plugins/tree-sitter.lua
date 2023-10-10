return {
  "nvim-treesitter/nvim-treesitter",
  build        = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "HiPhish/nvim-ts-rainbow2",
  },
  event        = "VeryLazy",
  main         = "nvim-treesitter.configs",
  opts         = function(_, opts)
    opts.ensure_installed = {

      "lua",
      "luadoc",
      "php",
      "json",
      "http",
      "phpdoc",
      "javascript",
      "python",
      "sql",
      "yaml",
      "vue",
      "bash",
      "regex",
      "blade",
      "css",

    }
    opts.highlight = {
      enable = true,
    }
    opts.indent = {
      enable = true,
    }

    opts.rainbow = {
      enable = true,
      query = "rainbow-parens",
      strategy = require("ts-rainbow").strategy.global,
    }
  end,
}
