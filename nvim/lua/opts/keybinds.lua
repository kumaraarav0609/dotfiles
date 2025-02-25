vim.keymap.set({ "n", "i" }, "<C-s>", ":w<CR>", { noremap = true, silent = true }) -- Save file
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format)
