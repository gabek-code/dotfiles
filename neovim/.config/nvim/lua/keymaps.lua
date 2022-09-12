-- Keymaps
-- -- See `:help vim.lsp.*` for docs
local opts = {noremap=true, silent=true}
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts);
vim.api.nvim_set_keymap('n', 'H', '<cmd>ClangdSwitchSourceHeader<CR>', opts);
