return {
   "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",

  },

  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

  mason_lspconfig.setup({
    ensure_installed = {
      "tsserver",
      "html",
      "cssls",
      "lua_ls",
      "emmet_ls",
      "pyright",
      "phpactor",
      "sqlls",
      "yamlls",
      "jdtls",
      "omnisharp_mono"
    },
    -- auto install configured servers(with lsconfig)
    automatic_installation = true, -- not the same as ensure_installed
  })
  end,
}