return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim"
  },
  config = function()
    local opts = { noremap = true, silent = true }
    local keymap = vim.keymap
    local on_attach = function(_, bufnr)
      opts.buffer = bufnr

      -- set keybinds
      opts.desc = "Show LPS references"
      keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

      opts.desc = "Go to declaration"
      keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

      opts.desc = "Show LPS definitions"
      keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

      opts.desc = "Show LSP implementations"
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

      opts.desc = "Show LPS type definitions"
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

      opts.desc = "Go to previous diagnostics"
      keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

      opts.desc = "Go to nest diagnostics"
      keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

      opts.desc = "show documentation for what is under cursor"
      keymap.set("n", "K", vim.lsp.buf.hover, opts)

      opts.desc = "Restar LSP"
      keymap.set("n", "<leader>rs", ":LspRestart", opts)

      opts.desc = "format "
      keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format { async = true }
      end, opts)
    end
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }

    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    local capabilitiesV2 = vim.lsp.protocol.make_client_capabilities()
    capabilitiesV2.textDocument.completion.completionItem.snippetSupport = true

    require("neodev").setup()

    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({
      on_attach = on_attach,
      settings = {
        lua = {
          --telemetry = { enable = false },
          diagnostic = { globals = { "vim" } },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            }
          }
        }
      }
    })

    lspconfig.emmet_ls.setup({
      capabilities = capabilitiesV2,
      on_attach = on_attach,
      filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss",
        "svelte", "typescriptreact", "vue" }
    })

    lspconfig.html.setup({

      capabilities = capabilitiesV2,
      on_attach = on_attach,
    })

    lspconfig.cssls.setup({

      capabilities = capabilitiesV2,
      on_attach = on_attach,
    })

    lspconfig.pyright.setup({
      capabilities = capabilitiesV2,
      on_attach = on_attach,

    })

    lspconfig.phpactor.setup({
      capabilities = capabilitiesV2,
      on_attach = on_attach,

    })

    lspconfig.jdtls.setup({
      capabilities = capabilitiesV2,
      on_attach = on_attach,

    })

    lspconfig.omnisharp.setup({
      capabilities = capabilitiesV2,
      on_attach = on_attach,
    })

    lspconfig.volar.setup({
      capabilities = capabilitiesV2,
      on_attach = on_attach,
      filetypes = { 'typescript', 'javascript', 'javascriptreact', 'vue', 'json' }
    })
  end,
}
