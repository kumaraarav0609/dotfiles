return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
    vim.filetype.add({ extension = { ejs = "ejs" } })
    vim.treesitter.language.register("html", "ejs")
    vim.treesitter.language.register("javascript", "ejs")
    vim.treesitter.language.register("embedded_template", "ejs")
  end
}
