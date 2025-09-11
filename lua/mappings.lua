require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
map("n", "<leader>fg", "<cmd>Telescope grep_string<CR>")
map("n", "<leader>rcu", function()
  require("crates").update_all_crates()
end)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
