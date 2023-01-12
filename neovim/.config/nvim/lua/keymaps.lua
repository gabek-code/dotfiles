-- Keymaps
-- -- See `:help vim.lsp.*` for docs
local opts = {noremap=true, silent=true}
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts);
vim.api.nvim_set_keymap('n', 'E', '<cmd>lua vim.diagnostic.open_float()<CR>', opts);
vim.api.nvim_set_keymap('n', 'H', '<cmd>ClangdSwitchSourceHeader<CR>', opts);

vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>Telescope<CR>', opts);
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope find_files<CR>', opts);
