return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-git",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "windwp/nvim-autopairs",
  },
  event = "VeryLazy",
  main = "config.plugins.cmp",
  config = true,

-- "hrsh7th/nvim-cmp",
-- event = "InsertEnter",
-- enabled= false,
-- dependencies = {
--   "hrsh7th/cmp-buffer", -- autocomleta con datos del buffer
--   "hrsh7th/cmp-path", -- nos permite obtener recomencaciones para ruta del sistemas
--   "L3MON4D3/LuaSnip", -- snippet engine
--   "rafamadriz/friendly-snippets", -- useful snippets
-- },
--
-- config = function()
--   local cmp = require("cmp")
--   local luasnip = require("luasnip")
--
--   -- load vscode style snippets fron installed plugins 
--   require("luasnip.loaders.from_vscode").lazy_load()
--
--   cmp.setup({
--     completacion = {
--       completeopt = "menu,menuone,preview,noselect",
--     },
--     snippet = { -- configure how nvim cmp  interacts with snippet engine
--       expand = function(args)
--         luasnip.lsp_expand(args.body)
--       end,
--     },
--     mapping = cmp.mapping.preset.insert({
--       ["<C-k>"] = cmp.mapping.select_prev_item(), -- prev suggestion
--       ["<C-j>"] = cmp.mapping.select_next_item(),-- next suggestion
--       ["<C-b>"] = cmp.mapping.scroll_docs(-4),
--       ["<C-f>"] = cmp.mapping.scroll_docs(4),
--       ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
--       ["<C-e>"] = cmp.mapping.abort(), -- close completion window
--       ["<CR>"] = cmp.mapping.confirm({select = false}),
--
--     }),
--
--     -- source for autocompletion
--     sources = cmp.config.sources({
--       {name = "nvim_lsp"},-- Lsp
--       {name = "luasnip"}, -- snippets
--       {name = "buffer"},-- text within current buffer
--       {name = "path"}, -- file system paths
--     }),
--
--   })
-- end,
}
