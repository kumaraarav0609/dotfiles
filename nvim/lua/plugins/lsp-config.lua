return {
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  {
    "neovim/nvim-lspconfig",
  config = function ()
    local lspconfig = require("lspconfig")

    require("mason").setup({
      ensure_installed = { "prettier", "stylua" }})
    require("mason-lspconfig").setup({
      ensure_installed = { "ts_ls", "html", "lua_ls" }
    })

    -- Setup LSP servers
    lspconfig.ts_ls.setup({})
    lspconfig.html.setup({})
    lspconfig.lua_ls.setup({})
  end
  }
}
