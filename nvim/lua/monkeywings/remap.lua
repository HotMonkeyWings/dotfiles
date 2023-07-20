vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", ":Explore<CR>", {silent = true})
vim.keymap.set("n", "<leader>w", "<C-w>")

-- Mason
vim.keymap.set("n", "<leader>m", ":Mason<CR>")

-- LSP
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")

-- MISC 
-- copy from vim from visual mode
vim.keymap.set("x", "<C-c>", [["+y]], {silent = true})
